X-GM-THRID: 6751365568986611712
X-Received: by 2002:a63:1606:: with SMTP id w6mr11636902pgl.245.1572117068976;
        Sat, 26 Oct 2019 12:11:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:2c1:: with SMTP id 184ls1718192pfc.7.gmail; Sat, 26 Oct
 2019 12:11:08 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy8MBn7jWyIFWYxljQNNIGMML3tarl0IXFfh9VbTwsRiK2TZ7si2DE3XvHdM8DPcsGWDRLZ
X-Received: by 2002:a65:49ca:: with SMTP id t10mr12364811pgs.310.1572117067986;
        Sat, 26 Oct 2019 12:11:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572117067; cv=none;
        d=google.com; s=arc-20160816;
        b=Fv6gk/RDcagXd3kXQSVrNtmvJBcgURmjG4X+FWOgN8eluPGf3bD9zO1KZkt9+94FVX
         u7jrl+olH2tLLK2l5qPgs3ikANkt5RHwblMdbWZzokbD4FLh45DQMneSvZA5eq+a8R5I
         lvgWfCkVioS9rh8e9PY4SWFkdpqKl9cFzsD7uIqqFV2bZONRS5eW7Y0E+GmO080GkB0R
         rc3jSwulHqA7uxof4PyGSUEwE+j2p5RZwM3Z6sE6TJyH4c/yEfKF9B+7M1gJIuxWJ/mH
         MJLIvuNMhCcZ1mNdyhC2JyHYwF5uAtxnBfOGWMT4tPwVT4PozGsa2UArpneIghlMgT9X
         CM/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=4M2PPQu81RMk5nsX69ndHO0vXv7tXeNQzA+s8i3K/j0=;
        b=znhqi10PvVxHqRwjQtfHSP8o9LJQWcbd3n/fp5nf4u7vilM9b8Q9oPEN/FQWgZ+Fuq
         rXBCu+QsZAQ8lStLNxV0DdKxm9RavusWWfxwORXLLRFCysBmurkoBXEhjqnM3vmrdo9j
         NW/8x8cYcrNEUEVEf059K0rW1DBBSCrfN25U8tsM28GTz0pUD/WHVAMx4azFticqng5M
         wV+VVcnkYC372XxMJ61rIz7ZfnIYjCRNoZvXNyP6a4eVrHanDy3lgVd2LcbvBvwEXaEo
         8lTwFT+q1OhkMfljWCMO+iX/lAioUN/QF0nkGmVPEmvEKj28nXQYF6KqoTo1jPYtplk3
         vKrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nxctGgrJ;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com. [2607:f8b0:4864:20::743])
        by gmr-mx.google.com with ESMTPS id h4si261006pjt.2.2019.10.26.12.11.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 26 Oct 2019 12:11:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) client-ip=2607:f8b0:4864:20::743;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nxctGgrJ;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::743 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x743.google.com with SMTP id 71so4911342qkl.0
        for <outreachy-kernel@googlegroups.com>; Sat, 26 Oct 2019 12:11:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=4M2PPQu81RMk5nsX69ndHO0vXv7tXeNQzA+s8i3K/j0=;
        b=nxctGgrJoLNSbguV4WSIiZryHyyuV9e4Lvv6AkOUd+N/OEu6UteDzWWerdaNpG79vL
         jue5VXecsZTJHH3IrZBtMl34GEiwssY7I4lQxe2lnVY0A5a1GRtNi3SAms8iftHZxHzH
         /F817JeWeytYvt1RJgQYbjpGtbZbn8knYH1fBO9ckc1K0wqK83vrEZWq8QMoplEvf4ti
         n9yRs9zNiwzm3sxnV6dJ5HNKLmNvcwkQO9hvO/sLGlHIRh6UBYRW95a7tcUksgotx1Ah
         yK+IEPKFLdC+lH9Xlf/xODpQgN/XB0VC9dLqjZWvBtneTaj8VCHBoNOjlGL6WFPKJ6tE
         pQNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=4M2PPQu81RMk5nsX69ndHO0vXv7tXeNQzA+s8i3K/j0=;
        b=GPGWuyqy9yiForHN7NTio96WJPkK3oPaIGtv8jYJP9vxXyI7XqlQOCVOEC85x/JdiK
         ZjYB43/18D2YdxmUprbOnfqfToTUKWOyNeAllqnqC+0GzVhRA/TPJif5oUYngSorr4VI
         pHq8U5F6VgZWgTd/6d8Fp705J3WCQeaunrIvXDO6EpZyJY8x0XRv4tg7XjNDHRT3qgOw
         jTaC2k3OWmWNcpEWhws0UK/0lXLxqpizRLpT9BzfZsJr+74BiNJSjCUOHZXrRdJ72J2g
         LuYe+15pZROdzA3UnYwnOqy+P6CQKDviCheRO3MnAKN6sS7Pkhsfqi+wCmEmcB4YIA3D
         emIA==
X-Gm-Message-State: APjAAAV3TOxc6vjC2gpags/rrThoifCDWcjO5ft/sCYMXegTAjl1H5kj
	pmykrM8s6B3CunOY0CFxgfS5y8vAt7KDLQ==
X-Received: by 2002:a37:9c44:: with SMTP id f65mr8995731qke.33.1572117066929;
        Sat, 26 Oct 2019 12:11:06 -0700 (PDT)
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from cristiane-Inspiron-5420 ([131.100.148.220])
        by smtp.gmail.com with ESMTPSA id i5sm3004932qtb.94.2019.10.26.12.11.04
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 26 Oct 2019 12:11:06 -0700 (PDT)
Date: Sat, 26 Oct 2019 16:11:01 -0300
From: Cristiane Naves <cristianenavescardoso09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Rob Springer <rspringer@google.com>,
	Todd Poynor <toddpoynor@google.com>,
	Ben Chan <benchan@chromium.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	Julia Lawall <julia.lawall@lip6.fr>
Subject: [PATCH v3] staging: gasket: Fix lines ending with a '('
Message-ID: <20191026191101.GA8973@cristiane-Inspiron-5420>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix lines ending with a '('. Issue found by checkpatch.

Signed-off-by: Cristiane Naves <cristianenavescardoso09@gmail.com>
---
Changes since v2:
 - Join the two similar patches staging: gasket: Fix lines ending with a
   '('.

Changes since v1:
 - Arranging conflict between author name and signed-off-by.
---
 drivers/staging/gasket/gasket_ioctl.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/gasket/gasket_ioctl.c b/drivers/staging/gasket/gasket_ioctl.c
index 240f9bb..e3047d3 100644
--- a/drivers/staging/gasket/gasket_ioctl.c
+++ b/drivers/staging/gasket/gasket_ioctl.c
@@ -34,8 +34,8 @@ static int gasket_set_event_fd(struct gasket_dev *gasket_dev,
 
 	trace_gasket_ioctl_eventfd_data(die.interrupt, die.event_fd);
 
-	return gasket_interrupt_set_eventfd(
-		gasket_dev->interrupt_data, die.interrupt, die.event_fd);
+	return gasket_interrupt_set_eventfd(gasket_dev->interrupt_data,
+					    die.interrupt, die.event_fd);
 }
 
 /* Read the size of the page table. */
@@ -54,9 +54,9 @@ static int gasket_read_page_table_size(struct gasket_dev *gasket_dev,
 	ibuf.size = gasket_page_table_num_entries(
 		gasket_dev->page_table[ibuf.page_table_index]);
 
-	trace_gasket_ioctl_page_table_data(
-		ibuf.page_table_index, ibuf.size, ibuf.host_address,
-		ibuf.device_address);
+	trace_gasket_ioctl_page_table_data(ibuf.page_table_index, ibuf.size,
+					   ibuf.host_address,
+					   ibuf.device_address);
 
 	if (copy_to_user(argp, &ibuf, sizeof(ibuf)))
 		return -EFAULT;
@@ -101,9 +101,9 @@ static int gasket_partition_page_table(struct gasket_dev *gasket_dev,
 	if (copy_from_user(&ibuf, argp, sizeof(struct gasket_page_table_ioctl)))
 		return -EFAULT;
 
-	trace_gasket_ioctl_page_table_data(
-		ibuf.page_table_index, ibuf.size, ibuf.host_address,
-		ibuf.device_address);
+	trace_gasket_ioctl_page_table_data(ibuf.page_table_index, ibuf.size,
+					   ibuf.host_address,
+					   ibuf.device_address);
 
 	if (ibuf.page_table_index >= gasket_dev->num_page_tables)
 		return -EFAULT;
-- 
2.7.4


