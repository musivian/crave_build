rm -rf .repo/local_manifests ; \
repo init --depth=1 --no-repo-verify -u https://github.com/RisingTechOSS/android -b fourteen -g default,-mips,-darwin,-notdefault && \
git clone https://github.com/musivian/local_manifest.git -b main .repo/local_manifests && \
/opt/crave/resync.sh && \
rm -rf hardware/qcom-caf/sm8150/media && \
rm -rf vendor/lineage && \
rm -rf hardware/xiaomi && \
export BUILD_RISING=true
source build/envsetup.sh && \
riseup sunny user && \
rise b > /dev/null && \
mv out/target/product/sunny/RisingOS*.zip . && \
export WITH_GMS=true && \
export TARGET_DEFAULT_PIXEL_LAUNCHER=true && \
rise b > /dev/null && \
mv out/target/product/sunny/RisingOS*.zip . && \
export TARGET_CORE_GMS=true && \
export TARGET_CORE_GMS_EXTRAS=true && \
rise b > /dev/null && \
mv out/target/product/sunny/RisingOS*.zip .
