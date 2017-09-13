X-GM-THRID: 6465168256299696128
X-Received: by 10.99.112.65 with SMTP id a1mr10001056pgn.96.1505289366476;
        Wed, 13 Sep 2017 00:56:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.88.24 with SMTP id m24ls2458669iob.14.gmail; Wed, 13 Sep
 2017 00:56:05 -0700 (PDT)
X-Received: by 10.36.192.85 with SMTP id u82mr1328642itf.49.1505289365650;
        Wed, 13 Sep 2017 00:56:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505289365; cv=none;
        d=google.com; s=arc-20160816;
        b=FNqgAsORz9H8IsQc8U1IWcTzH3b5vzFYM5Wh6h7K59k+drR4lzUdGE1lwzs3X3YfQj
         fRj/Ubtnt65dGt7CqzwXHGZM5SG47R/wZ/b9Crd8WFne97VlGJn7EiHp7g9lQm+jx9Xx
         UBpG8AeNP+HTLAlKGrqWQTJJuT4dFjFDMI9n8fzFJ7VJkkCX0O+ZaBb7OO1vqN8govgx
         z+XZXcY7kWngcqWuV3xILd5cu7eZFj8jKMn1hR+A6VYJ8sGn0z69PcbSiBHEI7rK2R8A
         Fp3TGQqFWPGYSQXy6/Onbjcvj6f/YOqqmw2uJoFrgJUQ3jx6dnokpHLLQyDbBU7F2pwg
         xomg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=uyayLxua5zLxP07ZACQkEuxC5/ILEQAB7bQBGcLihTg=;
        b=f3Tl9xveLXbPeq1GxS9SYQ0snFap9bsDbqNV3Imn3QIoG72rWjqGQFxph4ntKgJuxi
         ggHz5gTmz8nCQ/sp3/TWDqc3JrERLPHrcDmgTxmwxdz0VukESr3tQSP5I6WCGc9Mey+H
         6uwi9IgfWocDYpEGWK0hLmu54HHNKzS6Hna8/kG1miEspdKT4aDGi7zo9goCaBCusHY6
         StnE982NxOEvCXAKQ0FkbNz1/uilodTO7sNQq3EdG9RLJT3/eq89YPVBQhwI7+Ig85k/
         NIFeen3GsWjH1FU0cbQdlr+PmtT+tGD1bh/vxXhaY1dY3FnqTUX4p0pz8UvwYuOYCCUR
         K/qQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Qa39sNWx;
       spf=pass (google.com: domain of himshijain.hj@gmail.com designates 2607:f8b0:4001:c06::244 as permitted sender) smtp.mailfrom=himshijain.hj@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <himshijain.hj@gmail.com>
Received: from mail-io0-x244.google.com (mail-io0-x244.google.com. [2607:f8b0:4001:c06::244])
        by gmr-mx.google.com with ESMTPS id v124si1056636ywe.5.2017.09.13.00.56.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Sep 2017 00:56:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of himshijain.hj@gmail.com designates 2607:f8b0:4001:c06::244 as permitted sender) client-ip=2607:f8b0:4001:c06::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Qa39sNWx;
       spf=pass (google.com: domain of himshijain.hj@gmail.com designates 2607:f8b0:4001:c06::244 as permitted sender) smtp.mailfrom=himshijain.hj@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x244.google.com with SMTP id n69so7053520ioi.3
        for <outreachy-kernel@googlegroups.com>; Wed, 13 Sep 2017 00:56:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=uyayLxua5zLxP07ZACQkEuxC5/ILEQAB7bQBGcLihTg=;
        b=Qa39sNWxTvcv+EDh/ySweeZ+rGXS66WbK3yydP+hZwPjz0NXDcFGW6z2t5G2AaTpFL
         IHVAXl86UozGpmfPtAFsjN5kmeJ0/DuSKIB23i6bqzl9gj5dZPQyhR8W5stgIMPUC3bS
         t4Ak9c5OuDMsHJeAGKrzWoZzDaqMwi+Scutw4E14qaoHyhOczMYsCiet51FLGcJZomEd
         wyPWZw+SYD6L7CXICNC7oQXhdjBhhDb29orxVCwIIgDSPMR3nxr7BazaNaa5XJTOGZ5Z
         Jk3RhykjjpU99Q06qoE+nkczeEGpG+ikkFDhDyUWNQR4rFf1rWks0eONCd4IKDc84O+I
         sYRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=uyayLxua5zLxP07ZACQkEuxC5/ILEQAB7bQBGcLihTg=;
        b=T78n5Vrwko0nHzkK7piOqJU+bGYVs/MOndKR0/JAN/zxOsWPkEFDbgkPHK5qYYbw+L
         9Zj6y30/kRqyQsaKoNVMOVMJCcrQkiuetfqT5IAGPdcjAv5CYWx1aq8SXYYPgqJouv1J
         wmdJvGICoqogzjG3tb265uWkYiqF0nBt55Q0CnmaQzPkT7kDlPwx8BhhZ1pUo3kR+Yfk
         dxABZ9ceynC0mTiyWfm0QSWnRIWJD3PTNJVFMK4QS9n5YoksLqGQRhQwV9WyVVgM85Jw
         uP9L4bfD9/W4Fnet7Kb0pjphBkT8PDRmX7Hfiqhp7bl38MRD3YRHFj7yoel/7OVVNuko
         1urw==
X-Gm-Message-State: AHPjjUi66CCvnjwkxKNsDPEV1idzU/TylUKKBuZ1kGR/w8DNXQtI6vME
	Pvc+xKC8CBPjQpJD2oY=
X-Google-Smtp-Source: AOwi7QCxyVjDj0petmNVWAxF9uIMv9RQdOuZ4OaiN/Xb815bigyDE8rGfuLU+w/FUlZE19KLtFab4w==
X-Received: by 10.107.134.201 with SMTP id q70mr24852576ioi.59.1505289364999;
        Wed, 13 Sep 2017 00:56:04 -0700 (PDT)
Return-Path: <himshijain.hj@gmail.com>
Received: from localhost ([223.179.135.67])
        by smtp.gmail.com with ESMTPSA id k21sm443312iti.28.2017.09.13.00.56.03
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 13 Sep 2017 00:56:04 -0700 (PDT)
Date: Wed, 13 Sep 2017 13:26:00 +0530
From: Himanshi Jain <himshijain.hj@gmail.com>
To: outreachy-kernel@googlegroups.com, lars@metafoo.de,
	Michael.Hennerich@analog.com, jic23@kernel.org, knaack.h@gmx.de,
	pmeerw@pmeerw.net, gregkh@linuxfoundation.org,
	linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, nick.desaulniers@gmail.com,
	daniel.baluta@gmail.com
Subject: [PATCH 1/2] include: linux: sysfs: Add __ATTR_NAMED macro
Message-ID: <2bc7a124ab925dd2c50aa8c778745d179777d50d.1505288677.git.himshijain.hj@gmail.com>
References: <cover.1505288677.git.himshijain.hj@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1505288677.git.himshijain.hj@gmail.com>
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


