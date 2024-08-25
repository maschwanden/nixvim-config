{self, ...}: {
  keymaps = [
    # Basic mappings: "hjkl movements", insert, search, ...
    {
      mode = ["n" "v"];
      key = "n";
      action = "gj";
      options = { remap = false; };
    }
    {
      mode = ["n" "v"];
      key = "e";
      action = "gk";
      options = { remap = false; };
    }
    {
      mode = ["n" "v"];
      key = "m";
      action = "h";
      options = { remap = false; };
    }
    {
      mode = ["n" "v"];
      key = "i";
      action = "l";
      options = { remap = false; };
    }
    {
      mode = ["n" "v"];
      key = "k";
      action = "n";
      options = { remap = false; };
    }
    {
      mode = ["n" "v"];
      key = "K";
      action = "N";
      options = { remap = false; };
    }
    {
      mode = ["n" "v"];
      key = "h";
      action = "i";
      options = { remap = false; };
    }
    {
      mode = ["n" "v"];
      key = "H";
      action = "I";
      options = { remap = false; };
    }

    {
      mode = ["n" "v"];
      key = "gl";
      action = "function() vim diagnostic.open_float() end";
      options = { expr = true; remap = false; };
    }
  ];
}


