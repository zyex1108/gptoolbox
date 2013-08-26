function p = plot_edges(V,E,varargin)
  % PLOT_EDGES Plot edges
  %
  % p = plot_edges(V,E)
  % p = plot_edges(V,E,LINESPEC,...)
  %
  % Inputs:
  %   V  #V by dim list of edge vertiecs
  %   E  #E by 2 list of edges
  % Outputs:
  %   p  plot handle
  %

  switch size(V,2)
  case 2
    p = plot( ...
      [V(E(:,1),1) V(E(:,2),1)]', ...
      [V(E(:,1),2) V(E(:,2),2)]', ...
      varargin{:});
  case 3
    p = plot3( ...
      [V(O(:,1),1) V(O(:,2),1)]', ...
      [V(O(:,1),2) V(O(:,2),2)]', ...
      [V(O(:,1),3) V(O(:,2),3)]', ...
      varargin{:});
  otherwise
    error('Unsupported dimension: %d',size(V,2));
  end

end
