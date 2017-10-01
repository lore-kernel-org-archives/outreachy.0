X-GM-THRID: 6470705412124442624
X-Received: by 10.84.191.228 with SMTP id a91mr1065439pld.15.1506878781617;
        Sun, 01 Oct 2017 10:26:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.212.80 with SMTP id u16ls3080471pfl.10.gmail; Sun, 01 Oct
 2017 10:26:20 -0700 (PDT)
X-Received: by 10.99.186.23 with SMTP id k23mr279532pgf.152.1506878780681;
        Sun, 01 Oct 2017 10:26:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506878780; cv=none;
        d=google.com; s=arc-20160816;
        b=AiWqRZ4OIY+Qfc2L7nwNf/X6LPbsSbqEK7lsGl6wHEgqWySBOG2osQu3Ee0uD51hTT
         xKm3EfB63Nhh0IJytyXRLvYOa+8KIV0wQymCxQ0C3eaTaDf+BdBPkS6MnPrakN9CMScJ
         QJ9GCYfJM64EZVRrubBItLeogcwZJEShJniopvksYKUzGzVkM+xT0d+P1yfGnDkeI6W/
         lDumBJF9Jy9RYlnzANo8ETtDxhPoCdjbukE+jVcwhoaDgfdm3t0xaM+JVNEbCT6R090O
         rclRhLDCBMPGO9z2EBJUeB7CQHLsUq5ceNXNGzF2vS9NP2uHcQ+R3r2cSRg0+5OWmJW9
         T9bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=g03kBjiX1awdzY/fUi99ldpMqMjAIbUPrzWpFgO+Rlk=;
        b=yWWMMW+Tztpdqqn4thtXkCb+emGRVQnVpl9tMQH/aKRny2gPFV3ANafTmwS+pCsX5h
         n6+vmzfeZqaLqci6yDKtCE/OH6oT6m2lPajEeEWMdEPZs2jO1sxBaj4Syi90Sns5U21W
         DAkqDGweaWF/KoZyjetXeoEbFw7mbJAZVEgW9I/OCIUYkEw0qAmMiJ7NMcZLcRJJERvB
         f67r7kJweHKzgAYquDi10fZpMml2/P8A4kOM3KKa59SJB1m1kWXIgF3Qfthz4eD4ndoJ
         yOM8sEPOFmbx9GNRTPCjK/FarJLngBvPoZ7AhKYbt6egpYnGqZiwsQdC1bxd2OonWvZU
         QPAQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pDfL3nkT;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <meghana.madhyastha@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id z74si897561pfj.21.2017.10.01.10.26.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Oct 2017 10:26:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pDfL3nkT;
       spf=pass (google.com: domain of meghana.madhyastha@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=meghana.madhyastha@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id o1so2307401pga.4
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Oct 2017 10:26:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=g03kBjiX1awdzY/fUi99ldpMqMjAIbUPrzWpFgO+Rlk=;
        b=pDfL3nkTWFES9yj+zbxIBA4Gr+OGTkU3N3yPisRk+YWBqceQdWjoAdBc9Uyanq3pkk
         Ns5xK2nC2zREOlMTdBpx2AD0wY4XZp3L4r4FAfyYYfVsOi795KtMG+i6La+voOjwPLkq
         zfZszMvv6E6xLDrwY/Je2VYwY03TJdqFaTN3IXwyt3CBGW6Q1ZWtL7fikUQO5/4abYPq
         UQMcVUNzEKQXNDlwg/7Zqk2Gmf5EXtihgv3tVvi18e/TlIZLeL8WJPqplt0oahTsmaIX
         Slc2Gn/7Z8U3JoeUvnl7lsSkXsORtnzYbonoLfF8mE57LbGtoXlNC0yFBZr/4MkjcPUx
         wukw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=g03kBjiX1awdzY/fUi99ldpMqMjAIbUPrzWpFgO+Rlk=;
        b=LGqYYJrwikj+TzWft7IrJrNLgKauoTmAoABfLsZL8+nPr/bENxxIzY0/H3tXH+HP8o
         2ZG+DnhKq7qL+ST7lzeWftI58n+CNlkbJq4VnmZRFO6ved2RR7+lACy0CBJNL8cSH975
         y133RN6b7ZwwUVCFp4d8a+Nhr20lWEFLscQ/hu8ZaGKX8b+KkOOCaM4Q+FVVljeTu+oA
         9FWitb2C25r101CZF0UD+Mz1/r306lkAehbNyRD0E4/OSzqJ6Luhdwq2NinXpSgj44eB
         dx22WNgsCakGNU4d5r25iwZWYfTjEZNhz8rEc3Q76sdxCO+QpbFvp3tb3coESxl5r1LA
         L08A==
X-Gm-Message-State: AMCzsaVIuGucThjQ6hOLQW+DG8cfJ45Axs88V5QfH3KBofsUTkMh6g1u
	ZbP1NuGAr/+cP1UBwBTlhCw=
X-Google-Smtp-Source: AOwi7QCk04nlFAuPu7vCjypr2kiaOufKgljR0xrXpM+muEvvHEYimOmMHl4ezoJFrFPP0HrBlVITNg==
X-Received: by 10.84.213.16 with SMTP id f16mr7468242pli.262.1506878780448;
        Sun, 01 Oct 2017 10:26:20 -0700 (PDT)
Return-Path: <meghana.madhyastha@gmail.com>
Received: from meghana-HP-Pavilion-Notebook ([122.171.83.22])
        by smtp.gmail.com with ESMTPSA id c7sm14155101pfc.55.2017.10.01.10.26.16
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Oct 2017 10:26:19 -0700 (PDT)
Date: Sun, 1 Oct 2017 22:56:12 +0530
From: Meghana Madhyastha <meghana.madhyastha@gmail.com>
To: daniel@ffwll.ch, noralf@tronnes.org, outreachy-kernel@googlegroups.com,
	dri-devel@lists.freedesktop.org, Lee Jones <lee.jones@linaro.org>,
	Daniel Thompson <daniel.thompson@linaro.org>
Subject: [PATCH v7 1/3] backlight: Add
 IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)
Message-ID: <7a6311819f8eea0b2845c25cca72324b25e63e13.1506878301.git.meghana.madhyastha@gmail.com>
References: <cover.1506878301.git.meghana.madhyastha@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1506878301.git.meghana.madhyastha@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Add IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE) as part of the
if directive for the function declaration of
of_find_backlight_by_node in order to avoid module dependency
errors.

Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>
---
Changes in v7:
-This patch did not exist in v6. 

 include/linux/backlight.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/backlight.h b/include/linux/backlight.h
index 5f2fd61..a52ce82 100644
--- a/include/linux/backlight.h
+++ b/include/linux/backlight.h
@@ -162,7 +162,7 @@ struct generic_bl_info {
 	void (*kick_battery)(void);
 };
 
-#ifdef CONFIG_OF
+#if defined CONFIG_OF && IS_ENABLED(CONFIG_BACKLIGHT_CLASS_DEVICE)
 struct backlight_device *of_find_backlight_by_node(struct device_node *node);
 #else
 static inline struct backlight_device *
-- 
2.7.4


