X-GM-THRID: 6465168256299696128
X-Received: by 10.129.158.194 with SMTP id v185mr11548029ywg.50.1505292251922;
        Wed, 13 Sep 2017 01:44:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.195.15 with SMTP id t15ls2597850iof.46.gmail; Wed, 13 Sep
 2017 01:44:11 -0700 (PDT)
X-Received: by 10.31.124.9 with SMTP id x9mr9182878vkc.105.1505292251227;
        Wed, 13 Sep 2017 01:44:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505292251; cv=none;
        d=google.com; s=arc-20160816;
        b=vur1CJKsORw2gt+UYArW92kINCF4gnha/V1WJ+eJxq3iyqdGy8wuh0ah7zw1q+RetC
         tvAsxEb6aSqLqm9QcRAm+YbTXJhrQ3XaRUTKpB4gwkWZ4umTY3sWhslDlzVwQnD/Sucq
         GlR63W/QKdsF5LIbIzjBu67jl8+xIeVdC13mxhzJ87T+kx2iE/7Mp5C2/0PO8mjf5sIk
         HXpEiQazpQooO1/97fSnhNoEYkaEi+ChZSFI55JbYWsKMPbk8kt9jYSkF8Q6Hv7g62/R
         3AgGilQsqOdjED9stB4Sud1THfvhMlYOJUmY1arU2XAUZ0m3+czSVHpkU50Bq6XBIMSF
         0JfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=uyayLxua5zLxP07ZACQkEuxC5/ILEQAB7bQBGcLihTg=;
        b=gNxjPogQhOEdo3QeexFU9Qpedt7cCeonDzuxdh/cQyEreVfnqLt2djhocoOtUnfa00
         MXz4Irf2c92jEyTKGW/EizbZw/S9teiDDcKmJRDZQlaLyBkq76gc+ny3UI1pVszLZRe8
         k+Lb+GKfhsdxrP/ppgbDWqTVOfXe0LpqwjgdEwEcU94iRfVUnda5nH3Rv6gQgLLSMZuu
         Hn5kg75s7Bp59CWxaRA1wS/wiyYtIOVN0U5UHhXgIEcqt762Ou8G+JJydCNVVo08skJh
         x/FZsJqS3A7mEHBNOtrAI73vq+F+ZcNbxzwGJyM2X/+GXjWxIFkPWzJwTa1lWkQ2VzRo
         M1JQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CohS7pD6;
       spf=pass (google.com: domain of himshijain.hj@gmail.com designates 2607:f8b0:4001:c06::244 as permitted sender) smtp.mailfrom=himshijain.hj@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <himshijain.hj@gmail.com>
Received: from mail-io0-x244.google.com (mail-io0-x244.google.com. [2607:f8b0:4001:c06::244])
        by gmr-mx.google.com with ESMTPS id u76si458234ywe.17.2017.09.13.01.44.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Sep 2017 01:44:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of himshijain.hj@gmail.com designates 2607:f8b0:4001:c06::244 as permitted sender) client-ip=2607:f8b0:4001:c06::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CohS7pD6;
       spf=pass (google.com: domain of himshijain.hj@gmail.com designates 2607:f8b0:4001:c06::244 as permitted sender) smtp.mailfrom=himshijain.hj@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x244.google.com with SMTP id n69so48885ioi.3
        for <outreachy-kernel@googlegroups.com>; Wed, 13 Sep 2017 01:44:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=uyayLxua5zLxP07ZACQkEuxC5/ILEQAB7bQBGcLihTg=;
        b=CohS7pD6NZwRHUpv53sRPborhKD8O8db0kWbjSS5uW3q0zAByUdK1dDKZ6iYnl89c7
         GpKOV+cV5/B0LpK/+cMxeCVty7+/NmM2kstnFIxeY9uFtANZpf4h7mUbOpFH8AWmrdHJ
         JOUQO6eS1AdyTV/WwIdm1i9cQYmvmHA7sru2UsEVdRfNlK5KuGKuF/r+q7XZkomHHIFK
         NAxxUDXFDuk85RpQLi1Xv65llnLP6V2ohdROMPUMAo3ZyTPtw+k11m9elYjH4gu1fDgR
         4rclnC1PFzkr3LKkLvmAjtrHw5zEgRdi1alCuT36WtSASGuAKC0tXxj1RFIytilpDshI
         L4Fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=uyayLxua5zLxP07ZACQkEuxC5/ILEQAB7bQBGcLihTg=;
        b=ez8ysWw3g3E7IPWcsKPzcZYVyh/r1Y9R/8o9QJOvnW6iYXZOC0CndRfOtI6ZowTkIP
         bMprIhYw7HiiIdkJRS8mRZ9vBuskKUVephfNbRX3QO8DHq5sCApGl5bahbgjIOEL6vkK
         8wp+m09imnjZgfXhMlsTxXH0hNk7hDoiptClC1C8cvKNi5pU+/3KE56n5V/4Lb+vAQsD
         GMkl4BSJWz8AdenuzbwdfraRc0FZV9kFZa1ybcy1uO+B94tkgYZORiF1qNbxPfwIbQd0
         xA/IbebJ5M5IOPW8cXj5Oc9Dwtu5W1ZWioUCl9S2JExwZLEbn0JVYU0HnDpgTBEAhWFM
         I/pQ==
X-Gm-Message-State: AHPjjUisS+Tpb9Gv/qOK2vJudZ4t7w7jpg2HyQlf9MKy9uz66wDcCW20
	BEa29DxNUX8lFOKe8hw=
X-Google-Smtp-Source: AOwi7QCd87lg/Eo9wsFHaZnYOzlm0xIiqOvugljyLtDtjRs/sKGDbLvoxwokYY0yyi7ZiDGj0x2odg==
X-Received: by 10.107.200.86 with SMTP id y83mr24317469iof.24.1505292250805;
        Wed, 13 Sep 2017 01:44:10 -0700 (PDT)
Return-Path: <himshijain.hj@gmail.com>
Received: from localhost ([223.179.135.67])
        by smtp.gmail.com with ESMTPSA id v188sm498029itb.24.2017.09.13.01.44.09
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 13 Sep 2017 01:44:10 -0700 (PDT)
Date: Wed, 13 Sep 2017 14:14:07 +0530
From: Himanshi Jain <himshijain.hj@gmail.com>
To: outreachy-kernel@googlegroups.com, lars@metafoo.de,
	Michael.Hennerich@analog.com, jic23@kernel.org, knaack.h@gmx.de,
	pmeerw@pmeerw.net, gregkh@linuxfoundation.org,
	linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, nick.desaulniers@gmail.com,
	daniel.baluta@gmail.com
Subject: [PATCH v2 1/2] include: linux: sysfs: Add __ATTR_NAMED macro
Message-ID: <2bc7a124ab925dd2c50aa8c778745d179777d50d.1505291907.git.himshijain.hj@gmail.com>
References: <cover.1505291907.git.himshijain.hj@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1505291907.git.himshijain.hj@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Add __ATTR_NAMED macro similar to __ATTR but taking name as a
string instead of implicit conversion of argument to string using
the macro _stringify(_name).

Signed-off-by: Himanshi Jain <himshijain.hj@gmail.com>
---
 include/linux/sysfs.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/include/linux/sysfs.h b/include/linux/sysfs.h
index aa02c32..20321cf 100644
--- a/include/linux/sysfs.h
+++ b/include/linux/sysfs.h
@@ -104,6 +104,13 @@ struct attribute_group {
 	.store	= _store,						\
 }
 
+#define __ATTR_NAMED(_name, _mode, _show, _store) {			\
+	.attr = {.name = _name,						\
+		 .mode = VERIFY_OCTAL_PERMISSIONS(_mode) },		\
+	.show = _show,							\
+	.store = _store,						\
+}
+
 #define __ATTR_PREALLOC(_name, _mode, _show, _store) {			\
 	.attr = {.name = __stringify(_name),				\
 		 .mode = SYSFS_PREALLOC | VERIFY_OCTAL_PERMISSIONS(_mode) },\
-- 
1.9.1


