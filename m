X-GM-THRID: 6341120519688945664
X-Received: by 10.237.34.216 with SMTP id q24mr3816238qtc.69.1476491530782;
        Fri, 14 Oct 2016 17:32:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.6.41 with SMTP id 38ls2296326otn.34.gmail; Fri, 14 Oct
 2016 17:32:10 -0700 (PDT)
X-Received: by 10.157.61.97 with SMTP id a88mr3799077otc.148.1476491530377;
        Fri, 14 Oct 2016 17:32:10 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from mail-ua0-x243.google.com (mail-ua0-x243.google.com. [2607:f8b0:400c:c08::243])
        by gmr-mx.google.com with ESMTPS id p70si2811491vkd.0.2016.10.14.17.32.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Oct 2016 17:32:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c08::243 as permitted sender) client-ip=2607:f8b0:400c:c08::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of elise.lennion@gmail.com designates 2607:f8b0:400c:c08::243 as permitted sender) smtp.mailfrom=elise.lennion@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ua0-x243.google.com with SMTP id u68so73218uau.1
        for <outreachy-kernel@googlegroups.com>; Fri, 14 Oct 2016 17:32:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Y7tlwL+pz/sIdvjO0xbLv9HNPbEnl+a67/VZ3PewUZA=;
        b=EK2yP+bHXQDYpm0F8TbiOVr7D/5RbL4D97uWfbcSo8dLi5IVab6H+EkL6J+gGtDp3Y
         3QdvQFYqlZR7OMEr7A609NiDawnewndVOoQF7uUJpliTFFJG1EqaViM35/D2vR6DjRae
         p2nBDVWoybecbfLI0zT6T1x+aXeOzNEMEt7kowezGyUy1P0+Lb7d2s2YbI3dwG2IRYzn
         HL8xqcgi18/DxhGPc6q2ZPZtKawmivrZ+rqZJcR/Y161dVYXhlLYS6H/lhEya+N3Bxm2
         e+YlWCD/Xzh44uGhBPiqO439rTizSvdM9vmsBSMMAH9QMLnfV/UqoqmJn+spgZutlQ9w
         Cc4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Y7tlwL+pz/sIdvjO0xbLv9HNPbEnl+a67/VZ3PewUZA=;
        b=FPnF3JUtt2+l4N82YqKq+hn51kF7uLEXNyXuwelDzjKIqZibMsuAesI4wIFPMc4MYY
         Jl4rNr1ROLmjsBdxVRDmq/s1wHrut9Mf/08ynQ72FiWzcqOVhjUiq6cLYIhNsu/579mK
         M9xEWcCKnLsvGOhUmmZwfhQ3t7KbWmhW9pUlCVoyDxMlhF8Dccv5AP/rYKjeISbAzaKB
         yYLRfAm0Hq5Th5XWRzJFNd0qkL8q2vMnHZ9xFHoswgHSe/E6wbfXC+kws0ebKnnnTDoe
         yqpqKAdkE4kKOgCC96Ie+YEfhYXe/7jykIw2JGtrp1IMfkuEf3wVAWdA0oEUmdUE+bHo
         0X8Q==
X-Gm-Message-State: AA6/9RlJPYXX1Owa6dBUAFKW6Uxn330QH6foLbr6w99BqTFXwhwW6wcNtM5aWW7gPbyShQ==
X-Received: by 10.176.67.33 with SMTP id k30mr386915uak.148.1476491530216;
        Fri, 14 Oct 2016 17:32:10 -0700 (PDT)
Return-Path: <elise.lennion@gmail.com>
Received: from lennorien.com ([187.64.224.84])
        by smtp.gmail.com with ESMTPSA id o187sm8380774vkf.10.2016.10.14.17.32.08
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Oct 2016 17:32:09 -0700 (PDT)
Date: Fri, 14 Oct 2016 21:32:03 -0300
From: Elise Lennion <elise.lennion@gmail.com>
To: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: sm750fb: Add const qualifier to struct
 declaration.
Message-ID: <20161015003202.GA15932@lennorien.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Const qualifier added to struct declaration to avoid data overwrite
during runtime and improve security.

Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
---

 v2: Rewrite log message.

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


