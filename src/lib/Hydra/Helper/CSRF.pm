package Hydra::Helper::CSRF;

use strict;
use warnings;
use Digest::SHA qw(sha256_hex);
use MIME::Base64;
use Crypt::URandom qw(urandom);

sub generate_token {
    my ($session_id) = @_;

    # Generate a random token
    my $random_bytes = urandom(32);
    my $token = encode_base64($random_bytes, '');

    # Store token in session
    return $token;
}

sub validate_token {
    my ($provided_token, $session_token) = @_;

    # Both must be defined
    return 0 unless defined $provided_token && defined $session_token;

    # Must not be empty
    return 0 if $provided_token eq '' || $session_token eq '';

    # Constant time comparison to prevent timing attacks
    return _constant_time_compare($provided_token, $session_token);
}

sub _constant_time_compare {
    my ($a, $b) = @_;

    return 0 if length($a) != length($b);

    my $result = 0;
    for (my $i = 0; $i < length($a); $i++) {
        $result |= ord(substr($a, $i, 1)) ^ ord(substr($b, $i, 1));
    }

    return $result == 0;
}

sub get_token_field_name {
    return 'csrf_token';
}

1;