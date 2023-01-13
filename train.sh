

LANG="jpn"
MAX_PAGES=0  #0 for all
NUM_ITERATIONS=5000000

LANG_DATA_DIR="tesseract/langdata_lstm"
TESSDATA_DIR="tesseract/tessdata"
MODEL_DIR="model"
OUTPUT_DIR="output"
TRAIN_DIR="data_lstmf"
TRAINING_TEXT="untitled.txt"
# TRAINING_TEXT=${LANG_DATA_DIR}/${LANG}/${LANG}.training_text 



START_MODEL="jpn_ver5"
OUTPUT_NAME="jpn_vert_new"





# # # Remove the previosly generated training data
# rm -rf $TRAINDIR/*

# # # # normalize training text
# python3 ./tesseract/tesstrain/normalize.py -v ${TRAINING_TEXT}

# # # # # Generate training data
# # make text image tiff and box, then convert it to lstmf
# python tesstrain.py \
# 	--lang $LANG \
# 	--fonts_dir fonts \
#     --fontlist "DotGothic16" "Hachi Maru Pop" "Kaisei Opti" "Kosugi Maru" "M PLUS 1p" "Noto Serif JP" "Rampart One" "Reggae One" "Train One" "Yuji Boku" "Yuji Syuku" "Zen Antique" "Zen Kaku Gothic Antique" "Zen Kurenaido" "Zen Maru Gothic" "Zen Old Mincho" \
# 	--langdata_dir $LANG_DATA_DIR \
# 	--tessdata_dir $TESSDATA_DIR \
# 	--output_dir $TRAIN_DIR \
#     --maxpages $MAX_PAGES \
#     --distort_image \
# 	--linedata_only \
#     --ptsize 24 \
#     --noextract_font_properties \
#     --exposures 0 \
#     --writing_mode_vert \
#     --training_text $TRAINING_TEXT \
#     # --save_box_tiff
    






# # Extract the trainned model
combine_tessdata -u $MODEL_DIR/$START_MODEL".traineddata" $MODEL_DIR/$START_MODEL


# # # # # Fine tune the model, (OMP_THREAD_LIMIT, OPENMP burns CPU performance for nothing)
# rm -rf $OUTPUT_DIR/*
OMP_THREAD_LIMIT=1 lstmtraining \
    --continue_from $MODEL_DIR/$START_MODEL".lstm" \
    --model_output $OUTPUT_DIR/$OUTPUT_NAME \
    --traineddata $MODEL_DIR/$START_MODEL".traineddata" \
    --train_listfile $TRAIN_DIR/$LANG".training_files.txt" \
	--max_iterations $NUM_ITERATIONS \
    --old_traineddata $MODEL_DIR/$START_MODEL".traineddata" \
    --target_error_rate 1.0 \
    # --max_image_MB 12000 \
    # --debug_interval -1 \
    # --append_index 5 --net_spec '[Lfx128 O1c1]' \




# # # combines into a .traineddata
# lstmtraining --stop_training \
#     --continue_from $OUTPUT_DIR/$OUTPUT_NAME"_checkpoint" \
# 	--traineddata $MODEL_DIR/$START_MODEL".traineddata" \
#     --model_output $OUTPUT_DIR/$OUTPUT_NAME".traineddata"
