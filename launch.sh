export PYTHONPATH=/data/gbc/Workspace/Beta-DARTS:$PYTHONPATH
PYTHONHOME=/root/miniconda3/envs/rookie/bin
${PYTHONHOME}/pip install nas-bench-201

CUDA_VISIBLE_DEVICES=1 ${PYTHONHOME}/python ./nasbench201/train_search.py --data '/data/gbc/Datasets/cifar/cifar10/' --seed 2 --save 'beta_time_test'
# CUDA_VISIBLE_DEVICES=0 ${PYTHONHOME}/python ./nasbench201/train_search.py --data '/data/gbc/Datasets/cifar/cifar10/' --seed 5555 --save 'dartsv1_archl2_201' --arch_weight_decay 0.081 &
# CUDA_VISIBLE_DEVICES=1 ${PYTHONHOME}/python ./nasbench201/train_search.py --data '/data/gbc/Datasets/cifar/cifar10/' --seed 7777 --save 'dartsv1_archl2_201' --arch_weight_decay 0.081 &
# CUDA_VISIBLE_DEVICES=1 ${PYTHONHOME}/python ./nasbench201/train_search.py --data '/data/gbc/Datasets/cifar/cifar10/' --seed 9999 --save 'dartsv1_archl2_201' --arch_weight_decay 0.081