PrePostLoadX
setUpBaselineOfPrePostLoadX: packageRepo packageVersion: packageVersion loadType: loadType
  "self reset"

  | className basePackageName definitionArray |
  className := basePackageName := 'BaselineOfPrePostLoadX'.
  definitionArray := self
    definitionsForPostPreloadDoitBaseline: className
    loadType: loadType
    sourceForProjectClass: self sourceCodeForCypressBaselineProjectClass.
  ^ self
    createPackage: basePackageName
    packageVersion: packageVersion
    in: packageRepo
    withDefinitions: definitionArray