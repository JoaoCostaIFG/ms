- constructivism - pegar em algo que não existe e aplicar conceitos em cima
  (start from nothing)
- realism - consider everything that is real
- analogy - have 1 thing (like ant colorny) and want to represent traffic flow
  as ants that go around
- abstraction - focus on essential parts (abstract all other part) - Modelling

- number of cpu cores - characteristic of architecture (attribute)
- ram memory size - attribute of the system
- exec time - performance metric
- access to distributed storage - could be attribute or policy (how does the
  system work. changeable)

- workload - amount of input considered for the system. Affects the performance
  of the system.
- benchmark - pretty much the same as threshold. doesn't affect performace
- threshold - parameter to compare system. Doesn't affect performance (unless
  changing)
- metrics - measure performance. doesn't affect

- threshold - limit on indicator
- indicator - measure how good or how bad. Generally can be combination of a few
  metrics.
- workload
- performance metric - measure the quality

- controllable variable - manipulate the scenario. Can give exact value. Is an
  input (exogeneous).
- uncontrollable - Input (exogeneous). Por exemplo historical data sobre
  customers dada como input ao sistema.
- endogenous - output variables
- output - endogeneous
- exogeneous - input variables (ver blue box model)

- operation policies - Set of scenarios/different configurations that dictate
  how the system operates.
- implementation policies - Nao demos
- validation policies - processes related to code. Garantee that the system is
  working correctly.
- calibration policies - processes related to code. Garantee that the system is
  working correctly.
- Implementing simulation results - Depois de fazer operation policies. Escolher
  a que dá melhores results. Implementar uma simulação com essa policy.

- dynamic model - must change over time. Tinhamos que anaisar a bridge over
  time. Sistema que evolui ao longo do tempo.
- static model - situation that doesn't change over time. So queremos o maximo
  (worst-case). Result é um maximum value: ciclo de aumentar peso e ver se a
  brige colapsa (repete até rutura).
- behavior model - considera agentes
- optimal model - Nao existe

- deterministic model - sabemos a-priori valor
- stochastic model - distribution que descreve stuff

- continuous model - nao existem episodios. Continuous func. Metaphor: fluid
  dynamics
- discrete model - episodios. Metaphors: event, process, activity, agent,
  object-oriented

- Simulation advantages - time compression, time expandion, decision-making
  support

- validation - model represents accurately the real system. Can validate
  descriptive and predictive models.
- verification - models implements correctly the logical model (code)

- aspatial environment - no space representation
- euclidean environment - space is contibuous
- cellular-automata - cell behavior isaffected y neighboring cells. Usado em
  agent-based sim.
- network - relationships as explicit links (redes sociais)

- descriptive - describe how the system **is** given a system as input. Desbri
  behavior of the system (doesn't consider anything else).
- normative - describe the system in its optimal state. Normalize the system.
  Want the system to be optimal.
- predictive - how the system will evolve. Running the simulation to see how the
  simulation evolves over time. See how the system will be in the future.
- prescriptive - Describes changes/transformations in the system to bring it to
  a desired/optimal state. E.g. define the transformations that are necessary
  that: given a description of the system what transformations should I do to
  make the system optimal.
- speculative - constructivist approach to model the system. Take a starting
  point and see how the system will behave if I add something new. Not duplicate
  stuff, but add new concept.

## Execises

### Exercise 1

1. Descriptive, Prescriptive, Normative
2. Exogenous

- Uncontrolabble - inter-arrival time for clients
- Controllable - number of cashiers

3. Endogenous - max clients attended per hour
4. Average waiting time in queue (from joining the queue to leaving the system)
   per client
5. Indicator - total sales (€) relative to last year
6. Operational policies:

- number of cashiers
- types of queuing system
- types of cashier operation (e.g. age, priority, number of items, payment
  methods)

7. Data collection methods:

- Time stamp of cashier operation

8. Validation - See if the descriptive client performs similarly to the real
   system.

9. What different scenarios could be simulated:

- Can be more or less operational policies
- Ver 6.

10. Operational decision:

- At the end of the simulation, what decisions should the manager make
- E.g. Increase number queue

### Exercise 2

1. Descriptive, speculative, prescriptive
2. Exogenous var : number of vineyeards (controllable), weather
   (uncrontrolabble)
3. Endogenous var: total wine produced, total sales
4. Performance metric: time to harvest, total wine produced
5. Indicator: compare the number of sales with last year, profit, ROI
6. Operational policies: automation of harvesting, fertilizers, automatic
   irrigation, limit on investment
7. Data collection methods: **Queremos medir metrics**. Record the time to
   harvest. Number of wine bottles produced.
8. Validation: can't validate the speculative model -> non-applicable. The
   descriptive model can validate the descriptive model.
9. Different scenarios: drones bringing grapes. Have tractors. Use machines to
   extract the wine from the grapes.
10. Operational decisions: whether or not to implement the automation process.
    Which parts could be implemented given my available object
