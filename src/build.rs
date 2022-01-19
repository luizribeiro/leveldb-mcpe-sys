use std::env;
use std::process::Command;

fn main() {
    let outdir = env::var("OUT_DIR").unwrap();

    env::set_current_dir("deps/leveldb-mcpe/").expect("Couldn't cd to deps/leveldb-mcpe");

    Command::new("make").status().expect("Make failed");
    Command::new("cp")
        .args(&["out-static/libleveldb.a", &outdir])
        .status()
        .expect("Failed to copy libleveldb.a to outdir");
    println!("cargo:rustc-link-search=native={}", outdir);
    println!("cargo:rustc-link-lib=static=leveldb");
    println!("cargo:rustc-link-lib=stdc++");
}
