X-GM-THRID: 6884255134893735936
X-Received: by 2002:aa7:9358:0:b029:152:b349:8af8 with SMTP id 24-20020aa793580000b0290152b3498af8mr4842346pfn.9.1602865554939;
        Fri, 16 Oct 2020 09:25:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90b:709:: with SMTP id s9ls1605903pjz.1.canary-gmail;
 Fri, 16 Oct 2020 09:25:53 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzSA1Ph7YhOdZr5QifAJW2b/k8jX4DhV5WbQgnOGTIq0kwJeX/f4C7wQQlRo1QDo42rtFD8
X-Received: by 2002:a17:90a:3486:: with SMTP id p6mr4973340pjb.23.1602865553229;
        Fri, 16 Oct 2020 09:25:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602865553; cv=none;
        d=google.com; s=arc-20160816;
        b=N8Qml3fPqKEpS8fSkRJQfrf3KSG+21sZlfErLdJVTXDeMM/a2JSjpyNc4boJ+unzv2
         xAGQhlpMIe2dopeMZgsv4Aqe7PlZvr3sK8AgmZXRIfmgd6gCr7/D2qn80z0HcboQHBpU
         fQNQntWcpD2Z/85mVqLYYm6xyJz71yWXKdQ30Vlz2vvgVNbA0vizSMN9Inhqr2mSRWAS
         jQk8R4gYg46mxx3DYALDBpjNxqIiXV0R5La5QiTmlOkxAs9hPSm+ihPJZkKq2WhSfU9v
         go6xkVqnsHZDEUNcwUtnhOgqwD67Ju8pe27PFzKUBh4r3iPV4HbxlmsNppBYmbUj8c83
         YsaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=jAVHaOM5Zzgb2taEOEKK33Jp1Nn1KMWuW0ONRsCJAfM=;
        b=upiFAPK7sXTdB5IH71wnd7V9FeB3LivG3eA5uwo/C7zBn5qCJz/Bt6X7QTbAxj7p9a
         vsdBO9jYR3keCoGgGq9oI+GntwRWxe7Kd4Vwaxt2Yd9jup82USuHtW8UBKBXNKdi+CIx
         rXaGNka2kVJ0hHprUxsKDy6+Y35lubg5KAR6soAAm/pGLaOjpru4rPfeAt0yraT7vl16
         AdtTkHbk4HHiHM/y9xdiGl1Qs58xkroXDxTiIJrMcarShp6YlBRd4M711QMcB/MND679
         KN3rt/sCUeTC80+tU/FWDhSTJOjLbpWGsAVLp9oQb+VnGSU4WeikEMkxXWfY/zczze8Y
         jmQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lGyh7t8K;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id q2si202129pfc.0.2020.10.16.09.25.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Oct 2020 09:25:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lGyh7t8K;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x643.google.com with SMTP id 1so1565351ple.2
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Oct 2020 09:25:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition;
        bh=jAVHaOM5Zzgb2taEOEKK33Jp1Nn1KMWuW0ONRsCJAfM=;
        b=lGyh7t8KgjNul0zO9Eglwqn/uAUdj1R3+unGPyD9ZY+1in//bkSnkDeufOoINKdhhe
         T7jIy8teSKUWE5uR9zP021JriVvmYzSKQlAppIWEJfFZ98HnoPP4fzyt3sJx7e7BsGGs
         E7ulH+dJTTIES3ZNcmt/zA6hkCOzChMox99u20YyyVmnrdM7l33li52++EWbcaHMi+RO
         EQ5B4bzOXFFWBr+Dfj+Mg/US+Zr4S7PYs7AQq5nI+tBKAot16aP0nQvbnTqRPXvl7Zom
         ywtjlguZtK+HhIsw9xgN6qKrr/Mf6JvlrOPzb/GzHo5vLKE5/K88VZOcz29lDBpIGYbM
         FHsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition;
        bh=jAVHaOM5Zzgb2taEOEKK33Jp1Nn1KMWuW0ONRsCJAfM=;
        b=XemeesDGDMvO5A8Pj0swc+z5vTt5hMfM3caUbZ0LarRIdDBJ24eZ0YXEnpP1DnNj71
         zI9uGp+EfV4v2ufh+MOkWkFlblvPH7pj7FlUnE5BgHtWxoKIo05dlPmjaUlyZM6eQ3N9
         JrueVxJfyxPCQdW8xBeF9jknY4d86xqBMGgcHimKNmRMOJvV7hMeT9aylOyUL6q+JdBg
         P56ck0Tr/wlAgIKsWuV8FsJHhKgkADikSCThEFKKch5ytviPHXu1Rj+0yu/Jw2CPhbO1
         T01wCdAOSvIGXqe/BGvZoZ1lIWsGPiRzZUT7EnkInuFJiO9jKkPDRUo13mX1793krrdd
         +7Gg==
X-Gm-Message-State: AOAM533gDiR/cvIvBZFcU/VMB074vmr27fvL8rSYDFzYJCc1IVgtc2ID
	u3ZGwAv197lPtm0cGiVMSEhUv4SpfXSgjw==
X-Received: by 2002:a17:90a:f187:: with SMTP id bv7mr4958528pjb.198.1602865552755;
        Fri, 16 Oct 2020 09:25:52 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from ubuntu204 ([103.108.75.206])
        by smtp.gmail.com with ESMTPSA id b3sm3311804pfd.66.2020.10.16.09.25.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Oct 2020 09:25:52 -0700 (PDT)
Date: Fri, 16 Oct 2020 21:55:47 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com,
	Larry Finger <Larry.Finger@lwfinger.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: mh12gx2825@gmail.com
Subject: [PATCH] staging: rtl8188eu: rearrange lines exceeding 100 columns
Message-ID: <20201016162547.GA18073@ubuntu204>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Rearrange lines that are more than 100 columns in width to make them
more readable. Issue reported by checkpatch script.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_debug.c | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_debug.c b/drivers/staging/rtl8188eu/core/rtw_debug.c
index 3c0d20cb9c6a..11198d43a371 100644
--- a/drivers/staging/rtl8188eu/core/rtw_debug.c
+++ b/drivers/staging/rtl8188eu/core/rtw_debug.c
@@ -86,16 +86,20 @@ int proc_get_read_reg(char *page, char **start,
 
 	switch (proc_get_read_len) {
 	case 1:
-		len += scnprintf(page + len, count - len, "usb_read8(0x%x)=0x%x\n", proc_get_read_addr, usb_read8(padapter, proc_get_read_addr));
+		len += scnprintf(page + len, count - len, "usb_read8(0x%x)=0x%x\n",
+				 proc_get_read_addr, usb_read8(padapter, proc_get_read_addr));
 		break;
 	case 2:
-		len += scnprintf(page + len, count - len, "usb_read16(0x%x)=0x%x\n", proc_get_read_addr, usb_read16(padapter, proc_get_read_addr));
+		len += scnprintf(page + len, count - len, "usb_read16(0x%x)=0x%x\n",
+				 proc_get_read_addr, usb_read16(padapter, proc_get_read_addr));
 		break;
 	case 4:
-		len += scnprintf(page + len, count - len, "usb_read32(0x%x)=0x%x\n", proc_get_read_addr, usb_read32(padapter, proc_get_read_addr));
+		len += scnprintf(page + len, count - len, "usb_read32(0x%x)=0x%x\n",
+				 proc_get_read_addr, usb_read32(padapter, proc_get_read_addr));
 		break;
 	default:
-		len += scnprintf(page + len, count - len, "error read length=%d\n", proc_get_read_len);
+		len += scnprintf(page + len, count - len, "error read length=%d\n",
+				 proc_get_read_len);
 		break;
 	}
 
@@ -139,7 +143,8 @@ int proc_get_adapter_state(char *page, char **start,
 	int len = 0;
 
 	len += scnprintf(page + len, count - len, "bSurpriseRemoved=%d, bDriverStopped=%d\n",
-						padapter->bSurpriseRemoved, padapter->bDriverStopped);
+			 padapter->bSurpriseRemoved,
+			 padapter->bDriverStopped);
 
 	*eof = 1;
 	return len;
@@ -171,7 +176,8 @@ int proc_get_best_channel(char *page, char **start,
 
 		/*  debug */
 		len += scnprintf(page + len, count - len, "The rx cnt of channel %3d = %d\n",
-					pmlmeext->channel_set[i].ChannelNum, pmlmeext->channel_set[i].rx_count);
+				 pmlmeext->channel_set[i].ChannelNum,
+				 pmlmeext->channel_set[i].rx_count);
 	}
 
 	len += scnprintf(page + len, count - len, "best_channel_24G = %d\n", best_channel_24G);
-- 
2.25.1


