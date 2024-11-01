rm -rf .repo/local_manifests ; \
repo init -u https://github.com/RisingTechOSS/android -b fourteen --git-lfs && \
/opt/crave/resync.sh && \
rm -rf hardware/qcom-caf/sm8150/media && \
rm -rf vendor/lineage && \
rm -rf hardware/xiaomi && \
git clone https://github.com/musivian/local_manifest.git -b main .repo/local_manifests && \
export BUILD_RISING=true
. build/envsetup.sh && \
riseup sunny user && \
rise b && \
export WITH_GMS=true && \
export TARGET_DEFAULT_PIXEL_LAUNCHER=true && \
rise b && \
export TARGET_CORE_GMS=true && \
export TARGET_CORE_GMS_EXTRAS=true && \
rise b
