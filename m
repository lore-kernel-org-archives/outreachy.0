X-GM-THRID: 6807086164953006080
X-Received: by 2002:a37:9d4a:: with SMTP id g71mr16855847qke.54.1584898253168;
        Sun, 22 Mar 2020 10:30:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:4b5c:: with SMTP id e28ls4613889qts.10.gmail; Sun, 22
 Mar 2020 10:30:52 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuhtoHuKIQH+8LAswO25uNwOKdaKB+mKzTeZXNvvy0hK08WD4rnPrQRpnGHMClvek9QI0ZB
X-Received: by 2002:ac8:7a72:: with SMTP id w18mr5702319qtt.260.1584898252023;
        Sun, 22 Mar 2020 10:30:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584898252; cv=none;
        d=google.com; s=arc-20160816;
        b=cDvwUUG2jHo0VflH12tgdiDmPATLwxitPYfzoI2XvfKl5HukWaaZXu7sgNgjSh2klO
         7EYPlwd2M55uiYExwGfHrfE1OgZGjwfllMNTnCVCi9K1MiL+UR/BjtfzjitRcSKHTO2f
         E07dP6dmOrTSbWF3jPv+PmE03iEe/Edzbq+eowX3+Q717cDTjxcPX8+cq4PC089PN+y+
         WOe2tU6b3EFaYdwKNODiJwDEIeGkH6S3qdB4rNKiEjpCK6XQ5MDB62VwymqdiZfvBr6e
         QlyH1RaB3Ix3Osn+043u0eYUurvieiyh/pq8+cAXwjBAuOOjpouGomRleTIGnYmUZsh9
         i0zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:dkim-signature;
        bh=4ZoVQ1c9ycCJ8Gj1lfk5UAo2vuQPMTOZvWhGMpvKEUE=;
        b=RADxvQgd+cTrQSOky4s32G6Ajt2LY/+1hZhEvAg49PemBqLu9nYaghzCFLEveXxH2I
         XJvD1LWtNDKEKFmxLB5bxvfjGCun25PIeLWphhzZq6GuzN7f36rSU2CHVROuEZXk+Tgp
         jyeUhO8yiRccBebo6Gq8b4CeD7xMEGisX1HfrFSHj88iuTfPLPqu4S1DGUyBFq+8yd/8
         s71i1Xq09jujswa3Fl/e/Mm9csB42OdbWrScGaPBqBszNAlhEccgzh0vtvcBF6JDoONQ
         GGDYDEuFmj6JxlaiE16eIHBwH0CFUcGN/mwP4bS7IX7u4U70UICOjOXi1lVtIvIuXWCB
         XRDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=e5+mDZWL;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id r14si913617qtc.5.2020.03.22.10.30.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Mar 2020 10:30:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=e5+mDZWL;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id l184so6263902pfl.7
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Mar 2020 10:30:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=4ZoVQ1c9ycCJ8Gj1lfk5UAo2vuQPMTOZvWhGMpvKEUE=;
        b=e5+mDZWLNRbJUuoqDXwBJW5YIqPp6MblyeiFGTFz3gUtrNwjYD7VVxg88u89qdnkNB
         YonZUzNE4K4spQGQQaxpmB/zxewAiyjExivnkz1SukOWdnYfY584NrKJvaeVHq2Pfwzq
         AQtbrNIz1px0DMNltutapcWkEHl1kNZuBO1qKZFNA1xoQQiy2R1L2T4Mih1YSf3xqsrf
         eB34YXdekCSGzYajt85QS/JbkjkO7qM0/Qu3irCQ8yM/ifWOqfKo3tSo9e2GrcA6MGmP
         P/0El1GF701OqtbedrdpRjuEVfCjiuFelVm40Q+f2opsVKz4fzR/qDmFn5eVPbgoQbwb
         p+/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=4ZoVQ1c9ycCJ8Gj1lfk5UAo2vuQPMTOZvWhGMpvKEUE=;
        b=FC/es8J37PD8jvp7iTcPbQNA4WlSnpBPhNe+mVukGLkLacRAgrSFytiMtkDlVzaa7S
         k762ZfW6cLT/OCfEsFo5MzdV5osMcxICWsangfKaOrSDer6kOHM0v7fFTrLzjCqotYVs
         X+68cFsWzzz37RoTBsMUoAX7ksdnokqNf7jewIZn+xi8vIhtj8XoSeEFF6ZIRKIVjhCl
         YStWn7vq7+FDu7K+AAwcj/X2e3dO1eiKm3UMbFjKgSnIvF08d7dxMGm/qv7fWjQx8Soh
         8OW45Q9Tsp6IRsQ7LYkZgbg698THOvwZbfObZVfnK4UqGzo+YBihVE/S1wBygJ+bRHQg
         WVvg==
X-Gm-Message-State: ANhLgQ2DAoO4emwVTbmIUi4oveCzj1G/DW51P5CwRglFdsouBT/FzmC2
	BJG/Htco7zR33wAM+usi0GJGyuRH2x4=
X-Received: by 2002:a62:6244:: with SMTP id w65mr20692876pfb.89.1584898250652;
        Sun, 22 Mar 2020 10:30:50 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from simran-Inspiron-5558 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id f64sm11732499pfb.72.2020.03.22.10.30.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Mar 2020 10:30:49 -0700 (PDT)
Date: Sun, 22 Mar 2020 23:00:45 +0530
From: Simran Singhal <singhalsimran0@gmail.com>
To: Johan Hovold <johan@kernel.org>, Alex Elder <elder@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	greybus-dev@lists.linaro.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH] staging: greybus: tools: Fix braces {} style
Message-ID: <20200322173045.GA24700@simran-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

This patch fixes the check reported by checkpatch.pl
for braces {} should be used on all arms of this statement.

Signed-off-by: Simran Singhal <singhalsimran0@gmail.com>
---
 drivers/staging/greybus/tools/loopback_test.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/greybus/tools/loopback_test.c b/drivers/staging/greybus/tools/loopback_test.c
index ba6f905f26fa..d46721502897 100644
--- a/drivers/staging/greybus/tools/loopback_test.c
+++ b/drivers/staging/greybus/tools/loopback_test.c
@@ -801,8 +801,9 @@ static void prepare_devices(struct loopback_test *t)
 			write_sysfs_val(t->devices[i].sysfs_entry,
 					"outstanding_operations_max",
 					t->async_outstanding_operations);
-		} else
+		} else {
 			write_sysfs_val(t->devices[i].sysfs_entry, "async", 0);
+		}
 	}
 }
 
-- 
2.17.1


