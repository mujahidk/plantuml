# Plantuml
Docker Image for Plantuml (https://plantuml.com)

## [Plantuml](https://plantuml.com)

PlantUML is an open-source tool allowing users to create diagrams from a
plain text language. Besides various UML diagrams, PlantUMl has support
for various other Software development related formats, as well as
visualisation of JSON and YAML files. The language of PlantUML is an
example of a domain-specific language. Besides its own DSL, PlantUML
also understands AsciiMath, Creole, DOT, and LaTeX. It uses Graphviz
software to layout its diagrams and Tikz for LaTeX support. Images
can be output as PNG, SVG, LaTeX and even ASCII art. PlantUML has
also been used to allow blind people to design and read UML diagrams.  
[Wikipedia](https://en.wikipedia.org/wiki/PlantUML)

## Uml Diagram Text

diagram.txt
```
@startuml
Bob -> Alice : hello
@enduml
```

## Run

```bash
docker run -it --rm -v "$PWD":/code/ -w /code/ mjdk/plantuml java -jar /opt/plantuml/plantuml.jar diagram.txt
```

## Check the diagram

It generates a diagram in the same directory, do an `ls` to see the generated diagram file.

```bash
ls
```

