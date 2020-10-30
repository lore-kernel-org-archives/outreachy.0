X-GM-THRID: 6889250356687011840
X-Received: by 2002:a17:90a:2a01:: with SMTP id i1mr375058pjd.54.1604028594719;
        Thu, 29 Oct 2020 20:29:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:3fc9:: with SMTP id m192ls1805807pga.5.gmail; Thu, 29
 Oct 2020 20:29:53 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz1+2I0ReiI8NqhFVoxPK98SvldvUx7ttNxmYHLhBAL0qd+9RM7fb1VDd6Ateo8y4zlhMv9
X-Received: by 2002:a62:168a:0:b029:160:193d:b278 with SMTP id 132-20020a62168a0000b0290160193db278mr7440219pfw.48.1604028592939;
        Thu, 29 Oct 2020 20:29:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604028592; cv=none;
        d=google.com; s=arc-20160816;
        b=m0D/xuM323d9uIXbJU1oHXOvUCHSslfs4HCh3cxDcGX6B7Ayyy4/fgk2+YXX0rhe7b
         25nzRfUFrOYmJRpgjdFt87qUCm3rpABejAIe4D1LytPT8hgWkLyijwLLPj1qmT8XVUoX
         RveLj6s4pQb9MI/fleBTOqt8OSFaDFcYqHfTazkUEeR+d8gCJ3tjOSzMHa7bhUlMnGIJ
         We5mJAeeTpQllQnHYQgi/fk6IM+q6uSnD7FeqiQaINw7x7j4dsn3YSmWvMRhKkV0113l
         PN5ZShxRjY2glxkflAIrWdqhn0wqac+LzLK9q4OMKvdjcRCQ6Nwjfw5w3Me0RiOX6DLt
         W5Qw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=kNFigGmlnT8RRi6z0sCPMt5Zg63u/lv6a6WCx8xI9/k=;
        b=irRNErVCThPqZstdlN5d2EPsoQaI+NJrTpKLvlltPcPZKG6JJVtt+JRODo5P7Q3Vcv
         ciPuKVpVg8PUs5D6sagCOgr/4hCLoGaxuoMV1Oen97kSRMV/Zn/HUDPCcok3C98NbYja
         z433CjTLs4NgtHFHlSc6QsuppjwuN8RBe5gmptLuCYPmesIMtHzl7BU+EbBH6YQjyyb/
         OVmfv3AWcDltAsdXf0O3VJCFOKiEr1gTOuBOPUwLcBQY6dEjlz5P15x429I05Fezg1jG
         lbzx9egqQgzF0xxGXb+Goa5zPk/wgndt3G0T1WXqg82r+NxsiqodADVyEuke4XGw5sFt
         DuZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="mq0/8Qy7";
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id cl2si300699pjb.0.2020.10.29.20.29.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Oct 2020 20:29:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="mq0/8Qy7";
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id j18so4103316pfa.0
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Oct 2020 20:29:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=kNFigGmlnT8RRi6z0sCPMt5Zg63u/lv6a6WCx8xI9/k=;
        b=mq0/8Qy7Ve6u00MU6iGI3ZON19U0Xh/nF42bdR7N8KoIOexf6e9uuP1lJ7aPL9gxUF
         /6hU8zFSrMi6wE7MgmKYzth/P3AAHrFx3hiCLQqn74BJsqXoEznfDAxOU5bUjLpHiriW
         +xvNTLfTgQB/aH1BCeDHWPLsRnuRkZqcguv6AiS45T+8S70dPK3t9d1Z5D89aEvbA36h
         SSN0kZRpx6bb/PIB4Mg9d0IvpLH3k8tMjtCqBHy9vjRtvysTEcMkFXvrsqVhBh/S1tVI
         a9I2R3URX8Eno+U2bihtbF7TL09mAfmAwplYxtkDUuWuhZ8HRtLZLiCIVNjSul1ss+1T
         towA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=kNFigGmlnT8RRi6z0sCPMt5Zg63u/lv6a6WCx8xI9/k=;
        b=cPjTUft+FSFYCIdrIvfFUE1fMOPpHuWeBCqoVEbjZTFQ81ayBwgG+G1+EY9sWIIXD1
         9pNuSppHogPQYyaPpUrRZHABZ2gMkTYsPHLgPRqsyYEdJRZ3LY64N6gRQ6gJ7aEMPQeJ
         3e7apb3F2l/+fetXOvWc4kd7+qxiyBBUBUm5AQVk1Zbe30fvSZDQREpZNbgsetyiZW4v
         7VgdpkwCozoyt7SbAJg9myXds+MGyOGqrhI1rKm+6pNzJ8UaFA6NIj5zuhW1gi9GsO8x
         F19XOHUUWm6btyQgKHxl/0/7oUl0M5nYQo2JhwojXCijcIRd7zI8mqO80FX7NGxCG1CH
         ZFCQ==
X-Gm-Message-State: AOAM531znc6XPjDX3Sk50UI7l6rl/KtFOjpS2N5HC2/xGrqALG9Cq/xd
	R8cKfe97pATylsw1ZnO8JSPgvjxLKio=
X-Received: by 2002:a63:c053:: with SMTP id z19mr393466pgi.418.1604028592566;
        Thu, 29 Oct 2020 20:29:52 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from my--box ([103.98.79.70])
        by smtp.gmail.com with ESMTPSA id b16sm220933pju.16.2020.10.29.20.29.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Oct 2020 20:29:52 -0700 (PDT)
Date: Fri, 30 Oct 2020 08:59:45 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Zhenyu Wang <zhenyuw@linux.intel.com>,
	Zhi Wang <zhi.a.wang@intel.com>,
	Jani Nikula <jani.nikula@linux.intel.com>,
	Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
	Rodrigo Vivi <rodrigo.vivi@intel.com>,
	David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
	intel-gvt-dev@lists.freedesktop.org,
	intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org
Cc: mh12gx2825@gmail.com, melissa.srw@gmail.com, daniel.vetter@ffwll.ch
Subject: [PATCH] drm/i915/gvt: use DEFINE_DEBUGFS_ATTRIBUTE with
 debugfs_create_file_unsafe()
Message-ID: <20201030032945.GA274850@my--box>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Using DEFINE_DEBUGFS_ATTRIBUTE macro with debugfs_create_file_unsafe()
function in place of the debugfs_create_file() function will make the
file operation struct "reset" aware of the file's lifetime. Additional
details here: https://lists.archive.carbon60.com/linux/kernel/2369498

Issue reported by Coccinelle script:
scripts/coccinelle/api/debugfs/debugfs_simple_attr.cocci

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
Please Note: This is a Outreachy project task patch.

 drivers/gpu/drm/i915/gvt/debugfs.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/i915/gvt/debugfs.c b/drivers/gpu/drm/i915/gvt/debugfs.c
index 62e6a14ad58e..18adfa2d5f5b 100644
--- a/drivers/gpu/drm/i915/gvt/debugfs.c
+++ b/drivers/gpu/drm/i915/gvt/debugfs.c
@@ -147,9 +147,8 @@ vgpu_scan_nonprivbb_set(void *data, u64 val)
 	return 0;
 }
 
-DEFINE_SIMPLE_ATTRIBUTE(vgpu_scan_nonprivbb_fops,
-			vgpu_scan_nonprivbb_get, vgpu_scan_nonprivbb_set,
-			"0x%llx\n");
+DEFINE_DEBUGFS_ATTRIBUTE(vgpu_scan_nonprivbb_fops, vgpu_scan_nonprivbb_get,
+			 vgpu_scan_nonprivbb_set, "0x%llx\n");
 
 /**
  * intel_gvt_debugfs_add_vgpu - register debugfs entries for a vGPU
@@ -165,8 +164,8 @@ void intel_gvt_debugfs_add_vgpu(struct intel_vgpu *vgpu)
 	debugfs_create_bool("active", 0444, vgpu->debugfs, &vgpu->active);
 	debugfs_create_file("mmio_diff", 0444, vgpu->debugfs, vgpu,
 			    &vgpu_mmio_diff_fops);
-	debugfs_create_file("scan_nonprivbb", 0644, vgpu->debugfs, vgpu,
-			    &vgpu_scan_nonprivbb_fops);
+	debugfs_create_file_unsafe("scan_nonprivbb", 0644, vgpu->debugfs, vgpu,
+				   &vgpu_scan_nonprivbb_fops);
 }
 
 /**
-- 
2.25.1


