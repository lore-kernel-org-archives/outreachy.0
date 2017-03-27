X-GM-THRID: 6402251586842656768
X-Received: by 10.107.160.135 with SMTP id j129mr8074920ioe.20.1490640379047;
        Mon, 27 Mar 2017 11:46:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.7.18 with SMTP id 18ls769017ote.1.gmail; Mon, 27 Mar 2017
 11:46:18 -0700 (PDT)
X-Received: by 10.129.161.132 with SMTP id y126mr8201394ywg.91.1490640378609;
        Mon, 27 Mar 2017 11:46:18 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id a3si211670pfb.2.2017.03.27.11.46.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Mar 2017 11:46:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id g2so15003810pge.2
        for <outreachy-kernel@googlegroups.com>; Mon, 27 Mar 2017 11:46:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=woG/RihhEmXBLDaV9oA+1PZ53zkWZ5fWUdVsWrd6v48=;
        b=kz8u+taqs7eoRzy2trhL9FWM9WtuHmmG1pr35CrVD5in9g0Ih7XERi+Yg+rje19tsj
         RUQcWQrbxMeYrvgeGa/IDuDT1GJh9K5+0nC2DKg6TkFzzFvlAAaABJtMTlCM5NEgRzSr
         DuS2nDbPJOOgtKTHMaAhdQI5xIbRuIGDjVI1I4fBgHEL225a16N7ymu5eIJAE4Fe4Sx2
         fuK9waLOHMErJmA0MX/OKfnChrpmmGGhHQVaZMsIH/bl7O6n2vhzbzGxe06xhddjQkR7
         1IJZ6WoCBpv0lxG7U3QCNChlQT0nQBN1O04vpKT9VSv403mr7DqjviYsZlgDPv5CVTRL
         AE8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=woG/RihhEmXBLDaV9oA+1PZ53zkWZ5fWUdVsWrd6v48=;
        b=FDW2fVzJnGV91ltJDHQY0g8lHiuVGiNxrWyzw5az3UPlI0FStYmChnduoXwX/shLyq
         nDzJw0naBQZltyBwJYWCK1hJr2aZwMup89gQwly3WE4mAayrrxLYqAC31ceMdYBoAZ2d
         z4L3gRRxNOtVvew7qW2t1q02P24MvCeIwZ46og+GQmDx8G/rCBevxHVUOzIl14ACc28Z
         5FzpbEIDIcqgdbSBPDpFe7WmELg3pePSqLdA3i7myyrfjF0IrGQT1hHhKvt2VbgAcJEJ
         zbAsghLygspVf8ltnPYQ/3+ENt778D2EsYgrsPMMDhy6U9Emr+urXDaG6oEV+QKrOTcb
         upSA==
X-Gm-Message-State: AFeK/H173MPexvXqv5oRIw9l1WCP7oUwX3fHGEysb2wMDy6zWW9y0//FZFSNjn1GaPKusg==
X-Received: by 10.99.176.74 with SMTP id z10mr22974400pgo.234.1490640378378;
        Mon, 27 Mar 2017 11:46:18 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([47.9.128.122])
        by smtp.googlemail.com with ESMTPSA id c195sm2598698pfb.60.2017.03.27.11.46.10
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 27 Mar 2017 11:46:17 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: netfilter-devel@vger.kernel.org
Cc: pablo@netfilter.orgm,
	outreachy-kernel@googlegroups.com,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH 3/4] extensions: libebt_mark: Constify option struct
Date: Tue, 28 Mar 2017 00:15:29 +0530
Message-Id: <a95fb3da52de09e103736a49b838b78f091a3460.1490640256.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1490640256.git.gs051095@gmail.com>
References: <cover.1490640256.git.gs051095@gmail.com>
In-Reply-To: <cover.1490640256.git.gs051095@gmail.com>
References: <cover.1490640256.git.gs051095@gmail.com>

The struct brmark_opts of the type option is only
used to initialise the extra_opts field in xtables_target
struct and is no modified anywhere.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 extensions/libebt_mark.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/extensions/libebt_mark.c b/extensions/libebt_mark.c
index a1a208c..7b80b22 100644
--- a/extensions/libebt_mark.c
+++ b/extensions/libebt_mark.c
@@ -25,7 +25,7 @@ static int mark_supplied;
 #define MARK_ORMARK  '3'
 #define MARK_ANDMARK '4'
 #define MARK_XORMARK '5'
-static struct option brmark_opts[] = {
+static const struct option brmark_opts[] = {
 	{ .name = "mark-target",.has_arg = true,	.val = MARK_TARGET },
 	/* an oldtime messup, we should have always used the scheme
 	 * <extension-name>-<option> */
-- 
2.7.4


