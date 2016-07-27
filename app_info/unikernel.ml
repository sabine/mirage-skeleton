
module Main (C: V1_LWT.CONSOLE) = struct

  let start c info =
    let {Mirage_info. name; packages; libraries} = info in
    let s =
      Format.asprintf
        "name = %s@.\
         packages = %a@.\
         libraries = %a@."
        name
        Fmt.(Dump.list @@ pair ~sep:(const char '.') string string) packages
        Fmt.(Dump.list string) libraries
    in
    C.log_s c s

end
