X-GM-THRID: 6340041071062417408
X-Received: by 10.13.241.3 with SMTP id a3mr355601ywf.161.1476155843361;
        Mon, 10 Oct 2016 20:17:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.12.40 with SMTP id 37ls537143otr.33.gmail; Mon, 10 Oct
 2016 20:17:23 -0700 (PDT)
X-Received: by 10.157.15.171 with SMTP id d40mr429206otd.51.1476155843100;
        Mon, 10 Oct 2016 20:17:23 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-vk0-x242.google.com (mail-vk0-x242.google.com. [2607:f8b0:400c:c05::242])
        by gmr-mx.google.com with ESMTPS id p131si209389vkf.1.2016.10.10.20.17.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Oct 2016 20:17:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::242 as permitted sender) client-ip=2607:f8b0:400c:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::242 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x242.google.com with SMTP id 192so382893vkl.2
        for <outreachy-kernel@googlegroups.com>; Mon, 10 Oct 2016 20:17:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=ZWdFABgYVjjABiMnnY74A3qsjmqzT9bNoFrMX5ib6Sg=;
        b=shtBjDBbNqtXf/vFYcoQVTLcZa6C2p2PsGts+aGMl7OQrbKMPJOIdNlGvROt/JwPxB
         0/FLj08Uxs/9sxNazpxL0lBlkfMYWtqMrVGAFoKMK95568v54dsyVFw1zL8aOBDZZea1
         Mx4DqEmeHNH6w8ArBi6tkqpSt8MeNxyWMwETNHmfu8i7O0Ptjc+HfX0hax0wRW8WYloI
         ooLaudvJI1YT8JjtsAGCnLCux75r0BK5zR7f1LOgjElIsxh11lvjSedP8wtUoAVgXO7u
         yyps+fGRMb5EHSc1iUZIA3M07AQ+JCJeK5h0oavMadbsLCnOP/TG/NPn3u2dfBCuIRan
         HVFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=ZWdFABgYVjjABiMnnY74A3qsjmqzT9bNoFrMX5ib6Sg=;
        b=QM/1qnzjswzRT65/L0zyj7NrudXjsc6ZhMERpPXTVxosqDoJm5a2BPK5ZWPH7I+KDT
         0rcWskskTLVfGbS0o3Jnp5fAVRh6kf/5Sc3v+aXh0FjmHJ4otrwC/FpbBcEwUXUq6bl4
         66BCYxX9eUkWE0zEWmelo6nxNIjgCyHsry1jcGXW0o4GtlE7QPBha5lBft6YjVdLJTe8
         LysbANLIZCULewb2RUgyN42aI06TRqAO9sFqMr+9Zz8mVxrd+bOCyjSj5wUEdnYnoRk6
         zRISlWcwt+GH8TFNbN9FXWoaU21UIXJHFJa4zOWVSEFfyaP5BGZaPgq2CaEPKTMBRsi1
         kzjw==
X-Gm-Message-State: AA6/9RlIRMeGgAq71o0tRHDh4c6tovGq/xNJRwQjhnNklq2lQiOygeLDbteMyTQHukMh9w==
X-Received: by 10.31.21.80 with SMTP id 77mr1359171vkv.111.1476155842925;
        Mon, 10 Oct 2016 20:17:22 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id m12sm603992vkd.3.2016.10.10.20.17.21
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Oct 2016 20:17:22 -0700 (PDT)
Date: Tue, 11 Oct 2016 00:17:18 -0300
From: Elise Lennion <elise.lennion@gmail.com>
To: vaibhav.sr@gmail.com, mgreer@animalcreek.com, johan@kernel.org,
	elder@kernel.org, gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 7/7] staging: greybus: Replace sscanf with kstrto* to single
 variable conversion.
Message-ID: <20161011031718.GA22105@lennorien.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix checkpatch warning:

WARNING: Prefer kstrto<type> to single variable sscanf

kstrto* is designed to convert string to numerical value and makes
it easier to understand what the code does.

Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
---
 drivers/staging/greybus/audio_manager_sysfs.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/greybus/audio_manager_sysfs.c b/drivers/staging/greybus/audio_manager_sysfs.c
index d8bf859..469a922 100644
--- a/drivers/staging/greybus/audio_manager_sysfs.c
+++ b/drivers/staging/greybus/audio_manager_sysfs.c
@@ -44,7 +44,7 @@ static ssize_t manager_sysfs_remove_store(
 {
 	int id;
 
-	int num = sscanf(buf, "%d", &id);
+	int num = kstrtoint(buf, 10, &id);
 
 	if (num != 1)
 		return -EINVAL;
@@ -65,7 +65,7 @@ static ssize_t manager_sysfs_dump_store(
 {
 	int id;
 
-	int num = sscanf(buf, "%d", &id);
+	int num = kstrtoint(buf, 10, &id);
 
 	if (num == 1) {
 		num = gb_audio_manager_dump_module(id);
-- 
2.7.4


