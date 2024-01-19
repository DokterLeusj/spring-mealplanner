package be.addergebroed.weeklymealplanner.recipe.model.dto;

import be.addergebroed.weeklymealplanner.recipe.model.RecipeInstruction;

public record RecipeInstructionDto(int step,
                                   String instruction) {
    public static RecipeInstructionDto convertToDto(RecipeInstruction instruction) {
        return new RecipeInstructionDto(
                instruction.getStep(),
                instruction.getInstruction()
        );
    }


    public static RecipeInstruction convertFromDto(RecipeInstructionDto dto) {
        RecipeInstruction instruction = new RecipeInstruction();
        instruction.setStep(dto.step);
        instruction.setInstruction(dto.instruction);
        return instruction;
    }

    ;
}
