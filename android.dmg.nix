{ stdenv, lib, stdenvNoCC, fetchurl, undmg, ... }:

stdenvNoCC.mkDerivation (finalAttrs: {
  pname = "android-studio";
  version = "2023.1.1.28";

  src = fetchurl {
    url = let filename = "mac" + lib.optionalString stdenv.isAarch64 "_arm"; in
      "https://redirector.gvt1.com/edgedl/android/studio/install/${finalAttrs.version}/${finalAttrs.pname}-${finalAttrs.version}-${filename}.dmg";
    sha256 = "sha256-HGP7CWsXQQbVP6UFhJQ7AOTaVpw/DvQyDA2CMVIs8pk=";
  };

  sourceRoot = ".";

  nativeBuildInputs = [
    undmg
  ];

  installPhase = ''
    runHook preInstall
    mkdir -p $out/Applications
    cp -r *.app $out/Applications
    runHook postInstall
  '';
})
