X-GM-THRID: 6402251586842656768
X-Received: by 10.99.144.65 with SMTP id a62mr8094910pge.135.1490640370626;
        Mon, 27 Mar 2017 11:46:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.54.152 with SMTP id h24ls14107359otc.30.gmail; Mon, 27 Mar
 2017 11:46:10 -0700 (PDT)
X-Received: by 10.129.110.2 with SMTP id j2mr8610579ywc.96.1490640370210;
        Mon, 27 Mar 2017 11:46:10 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id 2si233560pfx.8.2017.03.27.11.46.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Mar 2017 11:46:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id 81so15041021pgh.3
        for <outreachy-kernel@googlegroups.com>; Mon, 27 Mar 2017 11:46:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=qFUno3HlPChSM7YU+gOU6vMrdgahI2w/BGdZ7+1QPQw=;
        b=QPhxBeD9oIE8kcJymRebHl6urrYJCx4GB/+WKUJ6xk8FVdh8XyNPlJP19S3c8cpsA/
         +fo4Gz3Y9zroCdQRK2WgTvZzO5zkgNCU2aoCgHgEK91jAdgmKD2JsnKM9wMcORFZ7Plv
         sb/zvN4BxyuJ/WNwmWcQgJV7VBW7rSqf0uh+koL8auHKPqAqp7FrYggKSOLIkXwiG44G
         ePMlflkdUrJqTN4hO1fSNB2TftvHQs0ncWc+8BKvhfDiT76z6mGGX0kVgZ9I/StkuM7Y
         +37BcDXiFjHmApkw8yeyADKrmJ+Ex9NeA/Mp4/8oVV+TqJY3iWzaepFqaPtBOfYtF5FH
         VI0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=qFUno3HlPChSM7YU+gOU6vMrdgahI2w/BGdZ7+1QPQw=;
        b=OJ9aSn0VwaT5UtZ/bpV7TSw7UT8tTJV0lLMssmJxzLj/9OeGeY0Hj+jPwCtxPkakST
         3LZgbZD98+2WT8YY07NukeiOHSRrvMDcsvEAmKCv5i58pYg/QwVOSIE1fN3MRlnAwMuO
         FWNYdrwnDILYS3MTEWebARA7qH7Z1UFqv8TYh+o0SZqOGYmdPevg86PNPmwDd5aLZkfN
         Ce2Iey9nRl8KEBebvYM6KNMcZK0C2wHMm2R5FtJ5LiAAKlPUnEU2OMktYxwTsUyeB5KG
         fgn5KDPCkFJRwPb9P6t/FSdm0PPcuiV3zj7E1/nCP6KmT2qa93wZCoLaPEgHBxDZ8aoO
         Bzxw==
X-Gm-Message-State: AFeK/H29P5wetOz0GOY/Q37zK5Tsfj+XUmk4dFa/vMbK+VrvQDJoLDJYDDjho6kodxhqPw==
X-Received: by 10.84.160.195 with SMTP id v3mr31200744plg.161.1490640369967;
        Mon, 27 Mar 2017 11:46:09 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([47.9.128.122])
        by smtp.googlemail.com with ESMTPSA id c195sm2598698pfb.60.2017.03.27.11.46.02
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 27 Mar 2017 11:46:09 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: netfilter-devel@vger.kernel.org
Cc: pablo@netfilter.orgm,
	outreachy-kernel@googlegroups.com,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH 2/4] extenstions: libebt_mark_m: Constify option struct
Date: Tue, 28 Mar 2017 00:15:28 +0530
Message-Id: <9d799f7a47c06313121af2ceaa88130e781cbdb7.1490640256.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1490640256.git.gs051095@gmail.com>
References: <cover.1490640256.git.gs051095@gmail.com>
In-Reply-To: <cover.1490640256.git.gs051095@gmail.com>
References: <cover.1490640256.git.gs051095@gmail.com>

The struct brmark_m_opts of the type option is only
used to initialise extra_opts field inside the xtables_match
struct and is not modified anywhere.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 extensions/libebt_mark_m.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/extensions/libebt_mark_m.c b/extensions/libebt_mark_m.c
index ab9d234..eb08dba 100644
--- a/extensions/libebt_mark_m.c
+++ b/extensions/libebt_mark_m.c
@@ -18,7 +18,7 @@
 
 #define MARK '1'
 
-static struct option brmark_m_opts[] = {
+static const struct option brmark_m_opts[] = {
 	{ .name = "mark",	.has_arg = true, .val = MARK },
 	XT_GETOPT_TABLEEND,
 };
-- 
2.7.4


