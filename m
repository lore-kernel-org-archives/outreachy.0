X-GM-THRID: 6747765295374401536
X-Received: by 2002:a92:d782:: with SMTP id d2mr3064510iln.159.1571086536064;
        Mon, 14 Oct 2019 13:55:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:8112:: with SMTP id e18ls677489ild.16.gmail; Mon, 14 Oct
 2019 13:55:35 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzZTOSwGiG9yb0/W29J45y3jt4wZrbtZvZF+feY5mBoYXtiLJPrhCQk2xnzRhLkalRt29Cf
X-Received: by 2002:a92:7742:: with SMTP id s63mr2650707ilc.230.1571086535093;
        Mon, 14 Oct 2019 13:55:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571086535; cv=none;
        d=google.com; s=arc-20160816;
        b=WhjN+86Dj2sva7H0p5f1PCh48H3aIr/7itbh2BWgUiYxoCwvD42DhPA0gnVzgZsyBi
         mH7SSrIuL3oksg+HV4f1F7ua15JXJ2FcFlWzKbgaznAp77TQ0kgrPnr+03g5ADu1ZFuO
         Wtyzngqzps9XUo04z3MtGvAnqpQiVq4zuo1aa2HBXCf2fgiMreLiSbqfwuaJC9Ggm9LG
         jlCx3P1X5+gHso73oRuw+aBH5ZlL86N4K6jREaqsTD5EkATA7E9dmNfL1TNVEhrgtx55
         SquDKAiV1Ge5yqfE6IPSwI+hEYP06B6JBJexjywL398A50rTNNvnpj2EhMitFjueLDdK
         JoKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=jPNwMt8GTppAnCETlfhUzEL88xcCCzlaQcNjqKZXH4c=;
        b=tZ+qp5G8Llo1cNIlqKZsN+efqm64Ql3kL+XG6+bDQGWvUEmwFZd+DL70Wja+xVlb+6
         dI3tbwIu5kfp5FjxaC6JFAQVhOB99wJXVWUcGBwNoF6BqzreYNfoBbn4T1jnqp+NxvJ3
         cMDkXPkM2YdcFrcry+CDBuX3zUrs3HuFZhXtKDvldNaHWIXLvkKW+LXFm9TflKE1n5fR
         O0u8HS+v/SNb5PfI4h7vinoKShWJhsdF2MTXFDqNPdz+ZPL6JpcShhzBorsRWulxOeUJ
         H0ikofobGvehWD7ODOaBIotzN60MQZ4mZxMigb13SgJD6VrNuibom1IV4PjZSD6NUfJY
         /BdA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aYtPKqtH;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jamal.k.shareef@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id q207si1140374iod.5.2019.10.14.13.55.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Oct 2019 13:55:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=aYtPKqtH;
       spf=pass (google.com: domain of jamal.k.shareef@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=jamal.k.shareef@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id k20so3402564pgi.1
        for <outreachy-kernel@googlegroups.com>; Mon, 14 Oct 2019 13:55:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=jPNwMt8GTppAnCETlfhUzEL88xcCCzlaQcNjqKZXH4c=;
        b=aYtPKqtH8qtgttKlKs1LprS4e56C/ehP+RLIlLFOxqv6VMb1HTN32nDZm5IGbHCutI
         zM5lA/rZtKwGPeMH9WNrY5bp9pHJIeX14KwnDCKdI9zqkP9hXPeN4spISuozfWsH+xxW
         71ipp7hu1lIWtzOyV+B3OEJC7KChi81WXj9nokF1qQkMoVNUB1AJN5/x9OfoZU/uFh7o
         IdNmQm7dz/1MgRo+wJfF/59E/FnrY7IkyYqHR1OhRP322/der7NRfhiyP1rpcFgbEvd3
         R8n8Z64dXuGE+ASq0Ic8XlPKiQ5F13uz5tpoHHb/5VuRkS6zVvkReg8v9JCS5sqLRO6q
         i6wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=jPNwMt8GTppAnCETlfhUzEL88xcCCzlaQcNjqKZXH4c=;
        b=ACAwJnWYWvHCIs7vMfBHoKALRy0kXvZSyDJnyUEXaRC1f0UC3XTdgz2e1xKCYfg+uB
         gOFFryNe14n6PhnEap4sT0eZ8Cbsk+klubBP8/mQPBacrSjVH4v3vAGooSXgrf8fp5Q0
         +QNnQyLIUNkBpfOlLqLxgZ0T4h8CLgKLlc2c8K5H3JJXlVr/dieYDLysoQ39gGEe3BYG
         RQHh4TS/YrbLQMs4FaCuqarRCqQgqBlIgUKOoArBroeRMiK513zLcK7emNhPY3Fyr3gC
         L4l+8uq8cZTArmF1bHLg/18T96OJAc10agBSHu13b5oxkYax2C0IrHix6JQI1Fy3NVl6
         NU3A==
X-Gm-Message-State: APjAAAV+sWP94BPh2pik+9pmmm1kJkyuvqFmLpoGJsyK8yAEjovTFt2X
	GUIUB8PAqmRLDiKNwPRqAzo2S5ol6uc=
X-Received: by 2002:a17:90a:2ec5:: with SMTP id h5mr8347431pjs.87.1571086534181;
        Mon, 14 Oct 2019 13:55:34 -0700 (PDT)
Return-Path: <jamal.k.shareef@gmail.com>
Received: from jamal-XPS-13-9343 (97-126-66-56.tukw.qwest.net. [97.126.66.56])
        by smtp.gmail.com with ESMTPSA id i184sm20647722pge.5.2019.10.14.13.55.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Oct 2019 13:55:33 -0700 (PDT)
From: Jamal Shareef <jamal.k.shareef@gmail.com>
To: boqun.feng@microsoft.com,
	andrea.parri@microsoft.com
Cc: Jamal Shareef <jamal.k.shareef@gmail.com>,
	vaibhav.sr@gmail.com,
	mgreer@animalcreek.com,
	johan@kernel.org,
	elder@kernel.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: greybus: Fix quote string split across lines
Date: Mon, 14 Oct 2019 13:55:29 -0700
Message-Id: <20191014205529.919-1-jamal.k.shareef@gmail.com>
X-Mailer: git-send-email 2.17.1

Fix quoted string split across multiple lines.
Issue found by checkpatch.

Signed-off-by: Jamal Shareef <jamal.k.shareef@gmail.com>
---
 drivers/staging/greybus/audio_manager_sysfs.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/greybus/audio_manager_sysfs.c b/drivers/staging/greybus/audio_manager_sysfs.c
index ab882cc49b41..54b0caf22b5a 100644
--- a/drivers/staging/greybus/audio_manager_sysfs.c
+++ b/drivers/staging/greybus/audio_manager_sysfs.c
@@ -17,11 +17,11 @@ static ssize_t manager_sysfs_add_store(struct kobject *kobj,
 {
 	struct gb_audio_manager_module_descriptor desc = { {0} };
 
-	int num = sscanf(buf,
-			"name=%" GB_AUDIO_MANAGER_MODULE_NAME_LEN_SSCANF "s "
-			"vid=%d pid=%d intf_id=%d i/p devices=0x%X o/p devices=0x%X",
-			desc.name, &desc.vid, &desc.pid, &desc.intf_id,
-			&desc.ip_devices, &desc.op_devices);
+	int num =
+	sscanf(buf, "name=%" GB_AUDIO_MANAGER_MODULE_NAME_LEN_SSCANF "s "
+	       "vid=%d pid=%d intf_id=%d i/p devices=0x%X o/p devices=0x%X",
+	       desc.name, &desc.vid, &desc.pid, &desc.intf_id,
+	       &desc.ip_devices, &desc.op_devices);
 
 	if (num != 7)
 		return -EINVAL;
-- 
2.17.1


