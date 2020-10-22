X-GM-THRID: 6886436790360604672
X-Received: by 2002:a05:6e02:111:: with SMTP id t17mr1958809ilm.79.1603373510622;
        Thu, 22 Oct 2020 06:31:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:cb4b:: with SMTP id k11ls188105jap.2.gmail; Thu, 22 Oct
 2020 06:31:49 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwMIcBlbOmWTof/gj1M8baOCNq3YAoXTb/G9JSuT5ap+LdidjLp2Mdd4mDBW+tZ/VFBl0ua
X-Received: by 2002:a02:5e04:: with SMTP id h4mr1810791jab.6.1603373509337;
        Thu, 22 Oct 2020 06:31:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603373509; cv=none;
        d=google.com; s=arc-20160816;
        b=y5d3DU+14VeqWj8DNfjNzqejWqs1kdVn3gqu8DRz3CYTQPHivMp/jv04syreorOoMC
         ov0LMdNLklS+jP3wBCNofnSlRkmRa1nOlVJfkBjRPAHJ8BE6MwwFoS/H3pXbcuNS3Bj1
         aDMBI3HYGV/Awf6zLgDUEwWo+CY8iyq7jZvq43BDmEs4Zxc5AV/dS+meUW60eHwFbwBN
         wTIrbI0R3i3iMwJA4dZOednFCyWujUr1c918b4F2H4cvy+/ubz3Zn7VcW29ysfgjbUuU
         RzL2DMVXzQzm/TZGTzfn/bLAaD34dnf8soolTRo5Uip8h6RWrqcEaNH3/5W/IeIIYGcK
         MFew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=IuqDlc/9sVmn6w8y6S9W6kIXAO5b3CW/ksiq6MJe4cw=;
        b=v7qmGtnYlrn/bv9a2ddbu1VUGHq5CMN2k8qdDPlkfFnrsGg2EyNLDNx5KynmCwjz8I
         0+YbHRoFujTrbrYSmXbbCE4iUsoxAX6TI1xP2zvwVp/7Xc8oCBSdAarBvdjxM25/eI/O
         Lri2/kNkhQmYbcS9gMECdKtHroshK1i5WQioKFaNqaORjOHEDzYCf6ZDGWfwSKW5cEjt
         TEnmnbRbHPEipd5wqx81RBUMbZ8wQK+jfKHAgKnJ4Ne5w+dyMtwr0Ckig2JnWDRqZfyN
         quX9jcAJUIHQ4MCekAEJwbgRFIzwfUDqOJ242UnqYZMpBzocag2gWmTSfPn5QZVL6je0
         936w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pyopdLJc;
       spf=pass (google.com: domain of sylphrenadin@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=sylphrenadin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sylphrenadin@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id i18si92957ils.5.2020.10.22.06.31.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Oct 2020 06:31:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of sylphrenadin@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pyopdLJc;
       spf=pass (google.com: domain of sylphrenadin@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=sylphrenadin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id f38so648081pgm.2
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Oct 2020 06:31:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=IuqDlc/9sVmn6w8y6S9W6kIXAO5b3CW/ksiq6MJe4cw=;
        b=pyopdLJco+fqduEOt5ILPt3cJRO+Oh6hqy3FINueRwWaaICkuby7DxjIE/WjDf86eA
         TW2rsYvh0DRiqNCkQKc+UA7H2PbJgRa3sKQpzJi+m94h9KObyhwbRXDlEsw76A/G6ckv
         13N4r7wVIOLPI09yZUN1LNPby9np3Bn37O2/dUZmuyI7NJKw33Ip/+kw8Xtd9BDwNFO1
         CHKN7cCNlx8JZCgQmRdU3rMgJQOX5/7Vu2VGyFUrDUkKWdJ3UReATbHuHqKWRlYyG7S1
         yH93A4+iinPCFxLUOklXe4PZhmQlXsrBzbqNhn5P2SfWA6UXISG5kRTAUgTbbVUvP+hP
         1k8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=IuqDlc/9sVmn6w8y6S9W6kIXAO5b3CW/ksiq6MJe4cw=;
        b=SEPiIDtTxoFiUUKbfzYxx4Gk6yu5QD+6UiXftTNJnMmD/eQypYmqSY838dBlrdb64p
         0j1LHvjmms5J4r4/Ad3OyBD4ugSNOEyRrYL1KPtSgnk1o6U7jsFz14OW6O0gEePwboit
         6DAW8K9AyJ2ABoDzsZ7FijiJUR1pG+VLiaJan8iC+qOdYZuVTuQVr/fw9e/w4d/FLihe
         3LlCaaY+z5V0KOMB6CpLgm3MaK2fZQltxx3pUTawYCVXspUogt5wRXGI63czqyv92mwI
         XevIkJU4qvZ2+xL82a1k+BSPNio46p6oNJagde3cAocSOtorfuQvsffxLlt374mi2Qef
         KPUA==
X-Gm-Message-State: AOAM533TQlS+jmL5L1jieU7zLzW/46zrnzctRYv/N0km9OyH2p9Fclhp
	rak1P0hbby0FgkwmIheL3rQ=
X-Received: by 2002:a05:6a00:2a5:b029:152:5652:7191 with SMTP id q5-20020a056a0002a5b029015256527191mr2421478pfs.7.1603373508738;
        Thu, 22 Oct 2020 06:31:48 -0700 (PDT)
Return-Path: <sylphrenadin@gmail.com>
Received: from adolin ([49.207.204.75])
        by smtp.gmail.com with ESMTPSA id k127sm2324006pgk.10.2020.10.22.06.31.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Oct 2020 06:31:47 -0700 (PDT)
Date: Thu, 22 Oct 2020 19:01:44 +0530
From: Sumera Priyadarsini <sylphrenadin@gmail.com>
To: sylphrenadin@gmail.com
Cc: outreachy-kernel@googlegroups.com
Subject: [Outreachy kernel][PATCH 0/5] drm/amdgpu: Replace snprintf() with
 sysfs_emit
Message-ID: <cover.1603371258.git.sylphrenadin@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Using snprintf() for show() methods holds the risk of buffer overrun
as snprintf() does not know the PAGE_SIZE maximum of the temporary
buffer used to output sysfs content.

This patchset is a series of Coccinelle cleanups across the staging
directory to convert snprintf with scnprintf in the relevant files.

Sumera Priyadarsini (5):
  gpu: drm: amdgpu: Replace snprintf() with sysfs_emit()
  gpu: drm: amdgpu: Replace snprintf() with sysfs_emit()
  gpu: drm: amdgpu: Replace snprintf() with sysfs_emit()
  gpu: drm: amdgpu: Replace snprintf() with sysfs_emit()
  gpu: drm: amdgpu: Replace snprintf() with sysfs_emit()

 drivers/gpu/drm/amd/amdgpu/amdgpu_atombios.c | 2 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_device.c   | 8 ++++----
 drivers/gpu/drm/amd/amdgpu/amdgpu_gtt_mgr.c  | 4 ++--
 drivers/gpu/drm/amd/amdgpu/amdgpu_psp.c      | 2 +-
 drivers/gpu/drm/amd/amdgpu/amdgpu_ras.c      | 4 ++--
 5 files changed, 10 insertions(+), 10 deletions(-)

-- 
2.25.1


