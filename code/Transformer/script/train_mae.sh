SCRIPT_PATH=$(dirname "$(realpath -s "$0")")
cd "$SCRIPT_PATH" || exit

cd ..
python main.py \
      --project_name transformer_CSI_mae \
      --exp_type mae \
      --data_name CSI \
      --data_type stock \
      --root_path ../../data/ \
      --full_stock_path CSI/ \
      --enc_in 96 \
      --dec_in 96 \
      --c_out 96 \
      --short_term_len 1 \
      --long_term_len 5 \
      --d_model 128 \
      --n_heads 4 \
      --e_layers 2 \
      --d_layers 1 \
      --d_ff 256 \
      --dropout 0.05 \
      --train_epochs 50 \
      --itr 1 \
      --batch_size 32 \
      --learning_rate 0.0001 \
      --adjust_interval 10 \
      --num_workers 10 \
      --devices 0 \

# --num_workers 10 这里要改成 "0"

# CSI script
# python main.py --project_name transformer_CSI_mae --exp_type mae --data_name CSI --data_type stock --root_path ../../data/ --full_stock_path CSI/ --enc_in 96 --dec_in 96 --c_out 96 --short_term_len 1 --long_term_len 5 --d_model 128 --n_heads 4 --e_layers 2 --d_layers 1 --d_ff 256 --dropout 0.05 --train_epochs 50 --itr 1 --batch_size 32 --learning_rate 0.0001 --adjust_interval 10 --num_workers 10 --devices 0

# test script
# python main.py --project_name transformer_CSI_mae --exp_type mae --data_name tickers_test --data_type stock --root_path ../../data/ --full_stock_path tickers_test/ --enc_in 13 --dec_in 13 --c_out 13 --short_term_len 1 --long_term_len 5 --d_model 128 --n_heads 4 --e_layers 2 --d_layers 1 --d_ff 256 --dropout 0.05 --train_epochs 50 --itr 1 --batch_size 32 --learning_rate 0.0001 --adjust_interval 10 --num_workers 0 --devices 0

# 这里面有个数字96是总股数88+8得到的
# 所以在测试的时候也要13=5+8