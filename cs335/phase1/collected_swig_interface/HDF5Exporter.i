%module (package = "PyCamellia") HDF5Exporter
%{
#include "HDF5Exporter.h"
%}

%include "Camellia.i"

%nodefaultctor HDF5Exporter;  // Disable the default constructor for class HDF5Exporter

using namespace std;

class HDF5Exporter {
public:
  HDF5Exporter(MeshPtr mesh, string outputDirName="output", string outputDirSuperPath = ".");
  void exportFunction(FunctionPtr function, string functionName="function", double timeVal=0);
  void exportFunction(vector<FunctionPtr> functions, vector<string> functionNames, double timeVal=0);
  void exportSolution(SolutionPtr solution, double timeVal=0);
};
