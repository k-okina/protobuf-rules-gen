protobuf_commit = "099d99759101c295244c24d8954ec85b8ac65ce3"

protobuf_sha256 = "c0ab1b088e220c1d56446f34001f0178e590270efdef1c46a77da4b9faa9d7b0"


def protobuf_rules_gen_repositories():
    if "com_google_protobuf" not in native.existing_rules():
        native.http_archive(
            name = "com_google_protobuf",
            sha256 = protobuf_sha256,
            strip_prefix = "protobuf-" + protobuf_commit,
            url = "https://github.com/google/protobuf/archive/" + protobuf_commit + ".tar.gz",
        )
