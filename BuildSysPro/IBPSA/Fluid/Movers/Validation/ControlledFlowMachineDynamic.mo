within BuildSysPro.IBPSA.Fluid.Movers.Validation;
model ControlledFlowMachineDynamic
  "Fans with different control signals as input and a dynamic speed signal"
  extends Modelica.Icons.Example;
  extends IBPSA.Fluid.Movers.Validation.BaseClasses.ControlledFlowMachine(
    fan4(energyDynamics=Modelica.Fluid.Types.Dynamics.FixedInitial),
    fan1(energyDynamics=Modelica.Fluid.Types.Dynamics.FixedInitial),
    fan2(energyDynamics=Modelica.Fluid.Types.Dynamics.FixedInitial),
    fan3(energyDynamics=Modelica.Fluid.Types.Dynamics.FixedInitial));
  annotation (
experiment(Tolerance=1e-6, StopTime=600),
__Dymola_Commands(file="modelica://BuildSysPro/Resources/IBPSA/Scripts/Dymola/Fluid/Movers/Validation/ControlledFlowMachineDynamic.mos"
        "Simulate and plot"),
    Documentation(info="<html>
This example demonstrates the use of the flow model with four different configurations.
At steady-state, all flow models have the same mass flow rate and pressure difference.
</html>"),
Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-160,-100},{160, 160}})));

end ControlledFlowMachineDynamic;