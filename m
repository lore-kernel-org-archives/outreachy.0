X-GM-THRID: 6342256003248029696
X-Received: by 10.36.107.209 with SMTP id v200mr5381025itc.22.1476828411366;
        Tue, 18 Oct 2016 15:06:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.11.231 with SMTP id 94ls568696oth.16.gmail; Tue, 18 Oct
 2016 15:06:50 -0700 (PDT)
X-Received: by 10.129.178.130 with SMTP id q124mr870179ywh.103.1476828410969;
        Tue, 18 Oct 2016 15:06:50 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-vk0-x244.google.com (mail-vk0-x244.google.com. [2607:f8b0:400c:c05::244])
        by gmr-mx.google.com with ESMTPS id p131si6493275vkf.1.2016.10.18.15.06.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Oct 2016 15:06:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::244 as permitted sender) client-ip=2607:f8b0:400c:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::244 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x244.google.com with SMTP id 83so497694vkd.0
        for <outreachy-kernel@googlegroups.com>; Tue, 18 Oct 2016 15:06:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=rk3BzrMBGuJoMIxLOoXzWW3ioaGXw9BGr2Rg9NN676M=;
        b=FRemdPYVCkkoaAWR/Dbg6v+1fIPmUDp1cTUSaIx0dd6T6coZjC9Y88kPoqeV1lknxr
         Zy1icgSMjSRWavFzPtmkAaOJ2soFlLVZtOEU/IdS59EdMv6c1bSim+K0qsc+Y3NtoW4h
         e1+qZtwMYTYrDpxrgJns7q+KTS+oK0vvA5WNgmLEyIgmkgf9r/Z4ohYOnNwLqN3CJevC
         /jGezQCZBvh73/YR1qKZ/W9DwUlmZb0x4ZNsBpUlMQP1zQBy8KxLGCcvG1p2YcuoJDaW
         i3ylmtDcPAI456H7d5E3KS2oFpl03AxJcEYD3S3d+KIX9yi+wzGKv3mvmd6NdbwG5Dve
         aWBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=rk3BzrMBGuJoMIxLOoXzWW3ioaGXw9BGr2Rg9NN676M=;
        b=fnRHK6wG6MA7OwlXpzt6Qt+TBtQZvGz+yNz0wnGeCJVCroPGaVjbHDPUCq3jhLK8oo
         jjNVX1Gs3HmGgJBYChfGrC6vH6wZKCUlH0RLr6GWNox7eAfFYvB1ECK2FBVrRiptnCjH
         KVAZKiC7A1dyWRQ4Ygk7MH+QmQLCBTiZhtcXcJd29nfkqE4IjFKGHy1W7PhfI+yudy64
         R+u5QuLWkjtyl1J523pmPOwCcorr38RJJiRNvf6JtDXKbNfHylvn0ky2kckrLvAU7eGv
         0MuPzmjSAj5lZMViU7jDYcz5WlsEONc8ai/nZc8mwgonH2UdKGTj91UAIaIRP/OvAFP9
         YX2w==
X-Gm-Message-State: AA6/9RnPQq0u2u+R7EohXERyt8LXbi73VNhGVx5McjeamRT6JCE90S6+jVBqIVCatORyZw==
X-Received: by 10.31.76.193 with SMTP id z184mr3055106vka.69.1476828410802;
        Tue, 18 Oct 2016 15:06:50 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id q10sm14932239vkd.0.2016.10.18.15.06.49
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Oct 2016 15:06:50 -0700 (PDT)
Date: Tue, 18 Oct 2016 20:06:44 -0200
From: Elise Lennion <elise.lennion@gmail.com>
To: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: sm750fb: Make variable read only after
 initialization.
Message-ID: <20161018220643.GA25791@lennorien.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Use __ro_after_init to protect variable, initialized in several steps,
from overwrite during runtime.

Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
---

 v2: Changed position of __ro_after_init in the same declaration.

 drivers/staging/sm750fb/sm750.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
index 0663ec0..9a49907 100644
--- a/drivers/staging/sm750fb/sm750.c
+++ b/drivers/staging/sm750fb/sm750.c
@@ -719,7 +719,7 @@ static int sm750fb_set_drv(struct lynxfb_par *par)
 	return ret;
 }
 
-static struct fb_ops lynxfb_ops = {
+static struct fb_ops lynxfb_ops __ro_after_init = {
 	.owner = THIS_MODULE,
 	.fb_check_var =  lynxfb_ops_check_var,
 	.fb_set_par = lynxfb_ops_set_par,
-- 
2.7.4


