X-GM-THRID: 6946316684199198720
X-Received: by 2002:a9d:6e94:: with SMTP id a20mr8905495otr.76.1617315388936;
        Thu, 01 Apr 2021 15:16:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:5c5:: with SMTP id 188ls1599219oif.6.gmail; Thu, 01 Apr
 2021 15:16:28 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzvl3K8qA/49uYyFVQUZAveo2OYYviY0Y7Xh6Yiv096OH6U8Moc9yu/KLYVJC+A/WYYZEJq
X-Received: by 2002:a05:6808:bcb:: with SMTP id o11mr7441655oik.141.1617315388281;
        Thu, 01 Apr 2021 15:16:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617315388; cv=none;
        d=google.com; s=arc-20160816;
        b=BMt4kH6X6XbmDV7Pc1LJK8hDQfnWTapRlQsiUvHFkg+fmbmoq0ZZEsp+izLe6NR8X+
         UAkuWonn2jcZtvGzKniVbexL0xV3uNgSxGTsV3CCh4P69FY0M8OXpXak4W0RDzX6Ffk7
         8qrKEyspzoNawAXUcKRZNY7vdaXm+7v+v1PrLsIgT23mnA6EeD/7peEFUPZPw2rzjGHI
         YOCcU4Gp04Hamrr+ZyjsqlARIS9ChJ7ODrCM9+ZBtp98gixfMj9azt0SNVOhuKk0aAe1
         GEQ9nx8TGdQPp4QgLxb9BLxpe2OqibeU0U4X99eK47OL6pAH7xPHmvsaduBqq2miFuVC
         bQIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=YrSMleKSbg2hGfW2GjIs965FPlWSY5ydLUSNL+d/gGc=;
        b=JvjaPtpXwSxUCrZVmxQMlxXVnVXg2LL04Vi+8IdNdKAA1D1IWjKDJff/TCtExJL3go
         rFoq9OT7vEufRUbLI2aCWMPNlMUbDFpUB7dwrj6N2cvlNEyYiubU1g6ZxgA02E4H4eIx
         BxSyP3xd7T7rNz+KX04xkhKdFxf6xZLT1oWP6YzRugjoIVmtcVWrXDfcbliIGJXIwziN
         BcP1BIwqL/N9Tz4031X5VjIV+Uykd1xJwPkLO981kT82FPn2LGubr+7mwPUUqa0l/OG9
         wiNpZsieK8Pk9dn24viDLwKmEZ6csW0X3H1NqRzaypS7mzv5YrzsKNUkyEbu2aAenYOj
         CeKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Q6WvExIF;
       spf=pass (google.com: domain of deborahbrouwer3563@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=deborahbrouwer3563@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <deborahbrouwer3563@gmail.com>
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com. [2607:f8b0:4864:20::1042])
        by gmr-mx.google.com with ESMTPS id f2si1063911oob.2.2021.04.01.15.16.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Apr 2021 15:16:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of deborahbrouwer3563@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) client-ip=2607:f8b0:4864:20::1042;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Q6WvExIF;
       spf=pass (google.com: domain of deborahbrouwer3563@gmail.com designates 2607:f8b0:4864:20::1042 as permitted sender) smtp.mailfrom=deborahbrouwer3563@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1042.google.com with SMTP id kr3-20020a17090b4903b02900c096fc01deso1727520pjb.4
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Apr 2021 15:16:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=YrSMleKSbg2hGfW2GjIs965FPlWSY5ydLUSNL+d/gGc=;
        b=Q6WvExIF3mEG2FTk9zpl0eDPMJoz82Yll3FVTAcJMcDIULymyfPTggVRR94Vb9sD2L
         DyDs6wV1F8HPEwmz6iplTCGJL9GspIjA4buhneeC96oYjHpkuyQf0T8YVEddnyHehs1J
         at4V4Lo2BsMvl+tHFD/KTQLTupYwz3hHbBvV69gng//N6h82iHzJGczyCFjuKhBRdT3L
         SfP3nGWzNaDTTNs+nVH9nDWeelJ5RtrnaiXH7WtC8sQX48j/zeIjzYxFBn0FK8+mfmxO
         HNuKLzQJ+MfEQfjGUoSkT2DnmRrX+mjXLsLx9Eg/Ixi47u2qqc4LHup6Q4v35hI3R1rf
         XoEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=YrSMleKSbg2hGfW2GjIs965FPlWSY5ydLUSNL+d/gGc=;
        b=BfCvxJ5ZRTHvMG2I4DacpZe4Om8NhERq40Z7ju0o5SfcNGvmgr73wOHf0/NbmkP08e
         fHY3F1z1tm3vbQqU7JTlyKYjA32l0uLpmvKUeLi5GDdAVqlhC/yJyu2b1BZAMzksy+sp
         A+Emlj0L+Hrpxk6TgbP/NPiKLZiVzkFjgS7CSoQO9leSxfkYY4LWiL8p2DAUh6JrMzWA
         1oSiM7u9az0oIbSzcJDYMticr0tUN1xV2/QD8jgzaNXzZKuOwZb16eMpk5zdOg5I16HC
         +FfamMK8384Ux4ezdVevKq/EJpCdXmnSYIdFJhbO5FWI8OumqK7K3iB2cBba1SEUKk5J
         /Waw==
X-Gm-Message-State: AOAM530rOsGFi9D0E5qVR4jRuJ0ZnwypoIUS0xgDwO11AuNZpFhz1dGb
	f48jV4UHp1owNdW7OzOpKeA=
X-Received: by 2002:a17:902:8687:b029:e6:5eda:c3a8 with SMTP id g7-20020a1709028687b02900e65edac3a8mr9588989plo.59.1617315387700;
        Thu, 01 Apr 2021 15:16:27 -0700 (PDT)
Return-Path: <deborahbrouwer3563@gmail.com>
Received: from djbComp.hitronhub.home (S0106ac202ecb0523.gv.shawcable.net. [70.67.120.89])
        by smtp.gmail.com with ESMTPSA id d13sm6671494pgb.6.2021.04.01.15.16.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Apr 2021 15:16:27 -0700 (PDT)
From: Deborah Brouwer <deborahbrouwer3563@gmail.com>
To: gregkh@linuxfoundation.org,
	ross.schm.dev@gmail.com,
	marcocesati@gmail.com,
	fabioaiuto83@gmail.com,
	dan.carpenter@oracle.com,
	phil@philpotter.co.uk,
	amarjargal16@gmail.com
Cc: linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Deborah Brouwer <deborahbrouwer3563@gmail.com>
Subject: [PATCH v3 1/3] staging: rtl8723bs: core: add comma within a comment
Date: Thu,  1 Apr 2021 15:15:40 -0700
Message-Id: <dc7ba26949bab3eb09dac4e4ebf2b87dd242b566.1617314121.git.deborahbrouwer3563@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1617314121.git.deborahbrouwer3563@gmail.com>
References: <cover.1617314121.git.deborahbrouwer3563@gmail.com>
In-Reply-To: <cover.1617314121.git.deborahbrouwer3563@gmail.com>
References: <cover.1617314121.git.deborahbrouwer3563@gmail.com>

Add a comma to separate repeated words in a comment. The comma preserves
the meaning of the comment while also stopping the checkpatch warning:
WARNING: Possible repeated word: 'very'.

Signed-off-by: Deborah Brouwer <deborahbrouwer3563@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_xmit.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
index 2daf5c461a4d..3878caf0b56c 100644
--- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
+++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
@@ -1700,7 +1700,7 @@ Calling context:
 If we turn on USE_RXTHREAD, then, no need for critical section.
 Otherwise, we must use _enter/_exit critical to protect free_xmit_queue...
 
-Must be very very cautious...
+Must be very, very cautious...
 
 */
 struct xmit_frame *rtw_alloc_xmitframe(struct xmit_priv *pxmitpriv)/* _queue *pfree_xmit_queue) */
-- 
2.17.1


