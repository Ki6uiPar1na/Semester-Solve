def xor_decrypt_with_text_key(encoded_hex, key):
    # Remove hyphens and convert the hex string to bytes
    encoded_hex = encoded_hex.replace("-", "")  # Remove hyphens
    encrypted_bytes = bytes.fromhex(encoded_hex)
    # Repeat the key to match the length of the encrypted data
    key_bytes = key.encode()  # Convert the key to bytes
    decrypted_bytes = bytearray()

    # XOR each byte with the corresponding byte in the repeating key
    for i in range(len(encrypted_bytes)):
        decrypted_bytes.append(encrypted_bytes[i] ^ key_bytes[i % len(key_bytes)])

    # Convert the result back to a string
    return decrypted_bytes.decode(errors='ignore')

# XOR-encrypted flag (hex string with hyphens)
encrypted_hex = "60-2c-7f-00-56-74-79-69-14-02-61-6d-6a-03-17-61-79-7f-01-04-74-79-3e-14-03-36-6d-6a-02-17-60-7f-7f-01-01-74-79-66-14-02-66-6d-6a-00-17-67-7e-7f-00-0e-74-78-6a-14-04-66-6d-6b-0c-17-60-7a-7f-07-01-74-79-3d-14-04-63-6d-6b-0d-17-60-28-7f-01-56-74-79-67-14-02-67-6d-6c-00-17-60-79-7f-01-02-74-79-68-14-03-66-6d-6a-00-17-61-75-7f-00-02-74-79-3a-14-03-60-6d-6a-05-17-60-28-7f-00-05-74-7e-6b-14-02-62-6d-6c-02-17-61-79-7f-00-05-74-78-6a-14-03-37-6d-6c-01-17-60-7a-7f-00-03-74-79-66-14-02-6c-6d-6c-06-17-60-29-7f-00-00-74-78-6d-14-04-62-6d-6a-05-17-67-29-7f-07-53-74-7e-3b-14-04-30"

# Replace this with the actual text key
key = input("Enter XOR key (text): ")

# Decrypt the flag
decrypted_flag = xor_decrypt_with_text_key(encrypted_hex, key)
print(f"Decrypted Flag: {decrypted_flag}")
