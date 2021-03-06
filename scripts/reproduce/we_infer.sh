#! /bin/sh

# CUDA_VISIBLE_DEVICES=0 python tools/test_net.py --dataset vgbansal --cfg configs/mine/rel_ft.yaml --set MODEL.NUM_CLASSES 609 TEST.TAGGING True MODEL.WORD_EMBEDDING_REGU True REL_INFER.TRAIN True TEST.USE_REL_INFER False MODEL.NUM_RELATIONS 21 TEST.SCORE_THRESH 0 MODEL.RELATION_NET_INPUT GEO --id we_relt_geo_sc --output_dir_append noinfer

CUDA_VISIBLE_DEVICES=0 python tools/test_net.py --dataset vgbansal --cfg configs/mine/rel_ft.yaml --set MODEL.NUM_CLASSES 609 TEST.TAGGING True MODEL.WORD_EMBEDDING_REGU True REL_INFER.TRAIN True TEST.USE_REL_INFER True MODEL.NUM_RELATIONS 21 TEST.SCORE_THRESH 0 MODEL.RELATION_NET_INPUT GEO --load_ckpt pretrained/we_relt_geo_sc.pth --output_dir_append we_infer
python tools/show_result.py test/we_infer/tagging_eval.pkl