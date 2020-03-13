X-GM-THRID: 6803763855931473920
X-Received: by 2002:a17:90a:ec0f:: with SMTP id l15mr11650953pjy.191.1584124717230;
        Fri, 13 Mar 2020 11:38:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:ab0b:: with SMTP id p11ls4311580pff.0.gmail; Fri, 13 Mar
 2020 11:38:35 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vviYEwIv7nEpEUGOPAfP0Q1hAFTGr7j6IxL8kGI/5mWxuOWPISsZQlcsQ7Nj68ksAHtrGqf
X-Received: by 2002:aa7:9471:: with SMTP id t17mr12777126pfq.272.1584124715767;
        Fri, 13 Mar 2020 11:38:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584124715; cv=none;
        d=google.com; s=arc-20160816;
        b=z7vAe4GmFm8gcqHjzv9BwFd9r8txUIff/2g+ri9ASp6olVIRCxtIXJtR+oybRUUaZa
         1IT1qpBPnPnIzHn+YpsfYgOxg0+ZDFhYx4v3EWt4AwmQKGmJ8ewcaM3y85nN4jHseB+2
         Ve3Tux1536hp6nnYewDgoP+2c3aUHbfnqvxX8RzsnFMrX+rOf7kJ2jjXCc3YiIOkzCw5
         iaxmPbV2fqEoGuSv+LHDq5t8T8hBokVhZcdFd2Q5CRCZQN7nmLaZafLFIqK73mivfGif
         L4bvCJmZxOwj43czogUe4vChPy78workkK9jZ3MiIpEtyGbNFB7KtidadGPTVhvwCw3c
         12ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=4AIxeUfOD1SctCpTFMClgUYEaOaT4few9FShijzheEE=;
        b=i2Si35ipTAIMfbwNQuOMEs2SFD9YlJDH8lkPHsgomly7C7IhevJJ+6mH4kLFZxJWP/
         VHt9EODX/boKLFI8763AwPTTUfbRzVyJ6ebBIivG/svbjYpxnPp1xFRl7QBD5PUstOMm
         T47Tl9CjKs3WjdcBDiwpNg07nK5QGooLqDaEXZ63u9EsN9dEoqh/JIDYtySLHj2gPWci
         yd5JnLuIPwTlImP/wVWxx9UfzkhO6i9d2YV7vuCaAy67L1u3c26RiCvek7eDxeA6Xao7
         MymoRZ9MTgi/5MHq6u1zHwyIipEfGfsz6/bme1qZTkSpg2+xb7XatKax/Pd1nrAF837m
         pxcg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=piFb85RB;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id 59si390366ple.2.2020.03.13.11.38.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 13 Mar 2020 11:38:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=piFb85RB;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1044.google.com with SMTP id d8so4786614pje.4
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2020 11:38:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=4AIxeUfOD1SctCpTFMClgUYEaOaT4few9FShijzheEE=;
        b=piFb85RBN92hq5/YL0wp0MBrt+5J5KPorgM1JWqnvqrBLaRAxyi8+lOHWqtBSMW29S
         D0agkQp3u954Za0msMquSFgQrq80BRDiOZWMP1PNChHT7XKNZsWLwElMOSfDU8lXlSRU
         wct/J0JEIG+/yAo0a302SFVsq9X9m3t+wgDqa8C4CY5Kjh6Y2Q/BGjmafvlpb3m72REI
         o1Q1FuOsIJ1ah2dzEITlowOtWdmj9Xyx34T9H+RplY9yxIycORK3W4S5MTZu3hEDyHU0
         RivK2hzoQk1cROxmYA+rMdKy6j+1cioeGJXIReABv35MUD9BSbmKU6Pn3N7kpr3ddfDR
         PqlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=4AIxeUfOD1SctCpTFMClgUYEaOaT4few9FShijzheEE=;
        b=WuyzAD+fUrfPJZ6jXFoEqLckgBsiEuhebvBvQRG0XvveVYNwLX/CZkxq+iNTV+Hdi0
         nJ8mUWLoJ71nFg0CBs/o4IjnylY5ZCXIxOudwhHz16ZblfgcEauHcR2t+Vgma2IO3UPA
         ExfUQURT0rEnsNYi391dIgL/vCpPPB1kHghRH8Xo5B7mgBrU7H62PRD9oaI7oqbb1dJn
         X1p0ibyNxohAOdPeptBITHOqLreT3eya6T1gPOkE0cujYPLHp33kVLvyFYnpcl7AIbM2
         /np4wjsznpWEnJVZKrwW425iXRP36F4kBwULwsvomc/3NCe5q58pY8PmNf+UmBm2/7ti
         oavw==
X-Gm-Message-State: ANhLgQ2Eg0NnonGa3EUnuzWbBhnKQPOTcj7hRZxw0ZTxLZ6lPq3SPaba
	B39Bgbi0r20b8daJVm2x8BRfx2aq
X-Received: by 2002:a17:902:9a42:: with SMTP id x2mr15244719plv.194.1584124715383;
        Fri, 13 Mar 2020 11:38:35 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.228.147.139])
        by smtp.gmail.com with ESMTPSA id h132sm54846668pfe.118.2020.03.13.11.38.33
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 13 Mar 2020 11:38:35 -0700 (PDT)
Date: Sat, 14 Mar 2020 00:08:30 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, daniel.baluta@gmail.com, mchehab@kernel.org,
	sakari.ailus@linux.intel.com
Subject: [PATCH] media: staging/intel-ipu3: Reformat pointer definition
Message-ID: <20200313183827.GA20795@deeUbuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Reformat pointer definition to make it more readable as per the coding
standards. Problem detected by checkpatch.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
 drivers/staging/media/ipu3/ipu3-v4l2.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/ipu3/ipu3-v4l2.c b/drivers/staging/media/ipu3/ipu3-v4l2.c
index 569e27b824c8..52826fad6f42 100644
--- a/drivers/staging/media/ipu3/ipu3-v4l2.c
+++ b/drivers/staging/media/ipu3/ipu3-v4l2.c
@@ -485,7 +485,6 @@ static int imgu_vb2_start_streaming(struct vb2_queue *vq, unsigned int count)
 	if (r < 0)
 		goto fail_return_bufs;
 
-
 	if (!imgu_all_nodes_streaming(imgu, node))
 		return 0;
 
@@ -1013,8 +1012,9 @@ static const struct v4l2_ioctl_ops imgu_v4l2_meta_ioctl_ops = {
 
 static int imgu_sd_s_ctrl(struct v4l2_ctrl *ctrl)
 {
-	struct imgu_v4l2_subdev *imgu_sd =
-		container_of(ctrl->handler, struct imgu_v4l2_subdev, ctrl_handler);
+	struct imgu_v4l2_subdev *imgu_sd = container_of(ctrl->handler,
+							struct imgu_v4l2_subdev,
+							ctrl_handler);
 	struct imgu_device *imgu = v4l2_get_subdevdata(&imgu_sd->subdev);
 	struct device *dev = &imgu->pci_dev->dev;
 
-- 
2.17.1


