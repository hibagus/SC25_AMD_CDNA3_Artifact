num_prompt=$(($3 * 4))

python3 -m sglang.bench_serving \
    --dataset-name random \
    --random-range-ratio 1 \
    --num-prompt $num_prompt\
    --random-input $1 \
    --random-output $2 \
    --max-concurrency $3 \
    2>&1 | tee ../outputs_py/run_$1-$2-$3.out 
