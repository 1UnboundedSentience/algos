 # /**********************************************************************************
 #  *                                 Homework VIII                                  *
 #  *                                                                                *
 #  *  Problem: Graph                                                                *
 #  *                                                                                *
 #  *  Prompt: Create a Graph class/constructor.                                     *
 #  *          Name it Graph (js) or graph (rb/py).                                  *
 #  *          The Graph will have the following properties:                         *
 #  *          vertices: A hash/dictionary/object to store vertices.                 *
 #  *          totalVertices: The total vertices in your Graph.                      *
 #  *          totalEdges: The total edges among all vertices in your Graph.         *
 #  *          The Graph will also have the following methods:                       *
 #  *          addVertex: Method that accepts an id (int/str), and creates an object *
 #  *                     with a "value" of id, and a property called "edges" which  *
 #  *                     will store the edges of the vertex. If a vertex with the id*
 #  *                     already exists, then do not create a new vertex.           *
 #  *          getVertex: Method that takes an id, and outputs the vertex with the   *
 #  *                     matching id, if it exists.                                 *
 #  *          removeVertex: Method that takes an id as its input, and removes the   *
 #  *                        vertex with the matching id.                            *
 #  *          addEdge: Method that accepts two different id's as its input, and     *
 #  *                   creates an edge between both vertices.                       *
 #  *                   (This edge may look like [id1,id2])                          *
 #  *          removeEdge: Method that accepts two different id's as its input, and  *
 #  *                      removes the edge between the two vertices if it exists.   *
 #  *          findNeighbors: Method that accepts an id as its input, and returns    *
 #  *                         all of the edges of that vertex.                       *
 #  *          forEachNode: Method that accepts an operation, and performs that      *
 #  *                       operation on each vertex in the Graph.                   *
 #  *  Input:  N/A                                                                   *
 #  *  Output: A Graph instance                                                      *
 #  *                                                                                *
 #  *  What are the time and auxilliary space complexities of the various methods?   *
 #  *                                                                                *
 #  **********************************************************************************/
 # /**
 #  *  Extra Credit: forEachEdge
 #  *
 #  *  Prompt: Method that accepts an operation, and performs that operation on each
 #  *          edge in the Graph.
 #  **/


class Graph
  def initialize
    @vertices = {}
    @total_vertices = 0
    @total_edges = 0
  end

  def add_vertex(id)
    #create obj with value of id
    @vertices[id] = {}
  end

  def get_vertex(id)
    @vertices.each do |k,v|
      if id == k
        return k
      end
    end
  end

  def remove_vertex(value)
    @vertices.each do |k,v|
      if @vertices[value] !== undefined
        @vertices.delete(value)
      end
      #iterate over vertices and remove edge
    end
    return "No Vertex matches the one you wish to delete"
  end

  def add_edge(id1, id2)
    @vertices[id1][id2] = true
    @vertices[id2] << [id1]
  end

  def remove_edge(id1, id2)
      @vertices[id1].delete(id2)
      @vertices[id2].delete(id1)
  end

  def find_neighbors(id)
    vertex = get_vertex(value)
    if vertex != nil
      results = []
      for edge in vertex.edges
        results.push(@vertices[edge])
      end
  end

  def for_each_node(operation)
    temp_graph = Graph.new()
    for vertex in @vertices
      temp_graph.add_
    end
  end
end

g1 = Graph.new()
g1.add_vertex("Jason")
p g1
g1.add_vertex("Silas")
p g1
g1.add_edge('Jason', 'Silas')
p g1
p g1.get_vertex('Jason')