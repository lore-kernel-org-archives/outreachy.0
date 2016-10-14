X-GM-THRID: 6341120519688945664
X-Received: by 10.66.17.137 with SMTP id o9mr2268996pad.124.1476407172499;
        Thu, 13 Oct 2016 18:06:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.20.213 with SMTP id r21ls6943959otr.17.gmail; Thu, 13 Oct
 2016 18:06:12 -0700 (PDT)
X-Received: by 10.129.77.87 with SMTP id a84mr2690917ywb.30.1476407172003;
        Thu, 13 Oct 2016 18:06:12 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-vk0-x242.google.com (mail-vk0-x242.google.com. [2607:f8b0:400c:c05::242])
        by gmr-mx.google.com with ESMTPS id p70si2151431vkd.0.2016.10.13.18.06.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 Oct 2016 18:06:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::242 as permitted sender) client-ip=2607:f8b0:400c:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c05::242 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x242.google.com with SMTP id 83so3297042vkd.0
        for <outreachy-kernel@googlegroups.com>; Thu, 13 Oct 2016 18:06:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=GmxfoLdk1AiaWpQL/eGtGAL+2iDM0W64GXUAbd2mgX0=;
        b=tHoaG9uOx1TEbRxGYEtiZFBC0Rc0MkUh2GJvK41x4av6RUWdwPmhIQsn4SmD19BDNB
         6NWvUysV+q5Lxv1igHX8WXKnygiPGFKeRFWQfdDAHhxdxGqSg5lXJgDXvw/8wUTZBg+L
         Zx/TFb3kGWJRjq9J/bxbSniTgBZ8OT9c8vLfndLYpOJg1ROU2S986fPVqlx0lw7tOqY2
         1AXtPDj08/c21pYpmKrmuf/KJs0bRDtsi/lH7vS9bWjCBnBueA3vpGuu7XGDv1M+4aev
         sI3ttbF9EyjJQDiUswIl9FxVd33fQVVwXqLdd4T28HJYr1+70evjR+hDrUw+0zib8guM
         +VPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=GmxfoLdk1AiaWpQL/eGtGAL+2iDM0W64GXUAbd2mgX0=;
        b=lO5t1J2qy6jF084EJ2tf8YJPvpNDdIBf8Mia0IgBwjRUALsnBNBm7flifFREbeR60Q
         nhAsxHbniuEwfOZN3CQdpNjzcguEFCp0seesrL8yUXa6EDLqGK6n4Fjr8LNPxJkfz/Sn
         +ZpJ0U4OYsAx9jBVSelZ4VmTpbPc5vSJLBhBoJJbQgwy4/ioZGD0DvCsQOn0HtUUd+rn
         zqumZyWwvvddLTeGisWf0XQeDf485cyUxguEQfSRsSjayoLbvR+SGuAYS0BnAazzlmUO
         QQLeXK6ijKA1gpwtaysr6H9CHhENPzO26RWAgN4fpooSjzY62OoCkOafSvLU8TjRE/QB
         nvLA==
X-Gm-Message-State: AA6/9RkVj8nwzre+Lk4kVy7fOtEdPcJY9RORu7A3f0wq0KID1mtvCS6MMN+Xclr6gKuPcQ==
X-Received: by 10.31.16.73 with SMTP id g70mr7168255vki.175.1476407171836;
        Thu, 13 Oct 2016 18:06:11 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id n191sm6474389vkc.1.2016.10.13.18.06.09
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 Oct 2016 18:06:11 -0700 (PDT)
Date: Thu, 13 Oct 2016 22:06:03 -0300
From: Elise Lennion <elise.lennion@gmail.com>
To: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: sm750fb: Add const qualifier to struct declaration.
Message-ID: <20161014010603.GA27171@lennorien.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Const qualifier added to struct declaration to make the code more
efficient.

Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
---
 drivers/staging/sm750fb/sm750.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/sm750.c
index b094492..0663ec0 100644
--- a/drivers/staging/sm750fb/sm750.c
+++ b/drivers/staging/sm750fb/sm750.c
@@ -1188,7 +1188,7 @@ static int __init lynxfb_setup(char *options)
 	return 0;
 }
 
-static struct pci_device_id smi_pci_table[] = {
+static const struct pci_device_id smi_pci_table[] = {
 	{ PCI_DEVICE(0x126f, 0x0750), },
 	{0,}
 };
-- 
2.7.4


