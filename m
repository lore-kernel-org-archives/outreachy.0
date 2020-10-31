X-GM-THRID: 6889706616955863040
X-Received: by 2002:a67:8884:: with SMTP id k126mr9942482vsd.44.1604134889482;
        Sat, 31 Oct 2020 02:01:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:874b:: with SMTP id j72ls1265226vsd.9.gmail; Sat, 31 Oct
 2020 02:01:28 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzVI3GA1JDYP30ZaLoYOaWUoDTS21lL6aVge9tsyH1vErepBq8yFWm+YHbxM7u1eWTfHAHR
X-Received: by 2002:a67:ef81:: with SMTP id r1mr10141412vsp.19.1604134888296;
        Sat, 31 Oct 2020 02:01:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604134888; cv=none;
        d=google.com; s=arc-20160816;
        b=ZFZSUEdbAph3zFRa5ZJShIwbSqSWkVg3Mt81sYztKeiglnQeqtoBesn70Ig6388STn
         iRXr5Aw3EXudYe4jBcdqA9seUfh4CPBiMxXmrMU3BnarR6x/gKeMfzFRwMad7+mBOihV
         PU+AcBRgGJMoYDxiY4EDwZDPfWqbuDjbTCnSrHTiAkpriqq/to/Hn9tGmxaWRMJN0+nT
         YIEBcUpFhPkts6/aEGwhIeUmEPYBzQJT2zbJCtWW7aFdcFRpseUpSvV8Ay2BVDK9nVY8
         Rr7ZgUJ8EO2gC33rAyK+GN5JYamN31Q1DeVEzPrlDDFTby/TQjvoEsxdXV/XCaA6PabP
         0B8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:dkim-signature;
        bh=hmGrsrnpjjaBlca7PfCLG/ZwpXluGKdqlCh7DOaGE30=;
        b=C2CJOAAEfA+KUNekIUDfOAN1Qnva5XXwxYRIuKl/bXkDwDhyEvEJd8tIO1lYUQkvO8
         mDEnUNuuZ9fT/7dVczTonjrzzY6ccw5f/WBuilkt7o+BT9NMEcXiV46T7KL98VrV9VMo
         nZB/bM7goAv03NKeTqJ31KG72wZ9dbF7A4YLylQropF7EIKCSw7EjbrdQ4ocrnTVXi3+
         T5i8S6Mx3WlKbFq4f2NkyncJFHIUKlMou4iFO692nuKCsrukWOFFEEZF31rjxfWntnsF
         rvcLYDocNvOywyQOdnfQXNSDr7KRqgv7zoP/Yc7+mOHZaM6Syo0F0wREb/rlbfwc5zOb
         i6sQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FmaUqyaN;
       spf=pass (google.com: domain of mdejesusfilho@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=mdejesusfilho@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mdejesusfilho@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id b16si539580vkn.5.2020.10.31.02.01.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 31 Oct 2020 02:01:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of mdejesusfilho@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FmaUqyaN;
       spf=pass (google.com: domain of mdejesusfilho@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=mdejesusfilho@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id f38so7050473pgm.2
        for <outreachy-kernel@googlegroups.com>; Sat, 31 Oct 2020 02:01:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=hmGrsrnpjjaBlca7PfCLG/ZwpXluGKdqlCh7DOaGE30=;
        b=FmaUqyaNh/zHkCJr8bZMPp2tD3w9S50LLo+TxjAFj+GTrWd8/YP6sMk+pBKHbK24oD
         9pKrSghVB1MYiqoQf9DuTam+nsd+3ZwkntUNxncpO9ssLxbQay+Qh5HYmevxH0jZH4ng
         YEbtHPdwWSzBZV2SxFsxyEyO43RdSgxPTRFGbijRL0cQ6I0FHA7+AjkkfvteU5flm9QO
         m0wCcWUo6Sacj5VUScPBUWZDHKrOXmPLKzJE/uUR11bwmg/J9QAo764YaCf09ygOtwCZ
         H9oCmFbv+CqR9NuVZap4oxYccvC7Cv1AX9cGs4dUfWp6Wvsc911GeETKnH1X12UIzJ+P
         vhWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=hmGrsrnpjjaBlca7PfCLG/ZwpXluGKdqlCh7DOaGE30=;
        b=KEalQJdTNIaKVIfhjV1N2QlRxldMRxOnLRXeXXWT0SJmM1T9JM1IuTxN/245nW3s5E
         AMlgk9upedazWR9+sImtj1WtyiCLlMQF2J5n2SvFPQ61MmjIDm/mJas9BJ9rmLyV9ZMW
         ikTQ6Lpbgu3Grnjj7iYmLSXQX577xI7ZqrVPPX9zJeaum90cdoqJWxT5olQKTUyM7bTi
         P97e8ka3GWuZ5oJuUL14u61IQaeT7jzdGhUtW1i4OsiOqC9FnR6loV6kOjLpZoC2C+o3
         5HSEmcX+0IMXcwlLw0pHeMKt5RAcDIyKO4/lqJHBbbFLMKcENN8cZ9/RzZGvmmYflRaJ
         W2TQ==
X-Gm-Message-State: AOAM531JTHv4TPjYcgWTqbFtP9XJ4ZlydeW+G9xHl+msUQ573fYU+Ntk
	WM8UvM5Hg6X/2AvliNHX1hzUcXLA25AsZ6mN
X-Received: by 2002:a62:d108:0:b029:163:d3cf:f00e with SMTP id z8-20020a62d1080000b0290163d3cff00emr12453252pfg.43.1604134887451;
        Sat, 31 Oct 2020 02:01:27 -0700 (PDT)
Return-Path: <mdejesusfilho@gmail.com>
Received: from localhost ([2601:643:282:4810:aed1:b8ff:fe8c:bd73])
        by smtp.gmail.com with ESMTPSA id 21sm8424113pfw.36.2020.10.31.02.01.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 31 Oct 2020 02:01:26 -0700 (PDT)
Date: Sat, 31 Oct 2020 02:01:25 -0700
From: Marcos Antonio de Jesus Filho <mdejesusfilho@gmail.com>
To: Forest Bond <forest@alittletooquiet.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 3/3] staging: vt6655: Remove useless else
Message-ID: <a794bc3814ffac8027cef21e2993de67fa7e30d0.1604133727.git.mdejesusfilho@gmail.com>
References: <cover.1604133727.git.mdejesusfilho@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1604133727.git.mdejesusfilho@gmail.com>

The else statement is not useful due to the presence of a return
statement on the if block. Remove the else statement, adjust the
indentation of the code and remove useless return statement. Reported by checkpatch.

Signed-off-by: Marcos Antonio de Jesus Filho <mdejesusfilho@gmail.com>
---
 drivers/staging/vt6655/rxtx.c | 38 +++++++++++++++++------------------
 1 file changed, 19 insertions(+), 19 deletions(-)

diff --git a/drivers/staging/vt6655/rxtx.c b/drivers/staging/vt6655/rxtx.c
index 9db4317f9a42..508e1bd7d76e 100644
--- a/drivers/staging/vt6655/rxtx.c
+++ b/drivers/staging/vt6655/rxtx.c
@@ -440,6 +440,8 @@ s_uFillDataHead(
 	bool is_pspoll
 )
 {
+	struct vnt_tx_datahead_ab *buf = pTxDataHead;
+
 	if (!pTxDataHead)
 		return 0;
 
@@ -544,29 +546,27 @@ s_uFillDataHead(
 
 		buf->time_stamp_off = vnt_time_stamp_off(pDevice, wCurrentRate);
 		return buf->duration;
-	} else {
-		struct vnt_tx_datahead_ab *buf = pTxDataHead;
-		/* Get SignalField, ServiceField & Length */
-		vnt_get_phy_field(pDevice, cbFrameLength, wCurrentRate,
-				  byPktType, &buf->ab);
+	}
 
-		if (is_pspoll) {
-			__le16 dur = cpu_to_le16(pDevice->current_aid | BIT(14) | BIT(15));
+	/* Get SignalField, ServiceField & Length */
+	vnt_get_phy_field(pDevice, cbFrameLength, wCurrentRate,
+			  byPktType, &buf->ab);
 
-			buf->duration = dur;
-		} else {
-			/* Get Duration and TimeStampOff */
-			buf->duration =
-				cpu_to_le16((u16)s_uGetDataDuration(pDevice, DATADUR_B, cbFrameLength, byPktType,
-								    wCurrentRate, bNeedAck, uFragIdx,
-								    cbLastFragmentSize, uMACfragNum,
-								    byFBOption));
-		}
+	if (is_pspoll) {
+		__le16 dur = cpu_to_le16(pDevice->current_aid | BIT(14) | BIT(15));
 
-		buf->time_stamp_off = vnt_time_stamp_off(pDevice, wCurrentRate);
-		return buf->duration;
+		buf->duration = dur;
+	} else {
+		/* Get Duration and TimeStampOff */
+		buf->duration =
+			cpu_to_le16((u16)s_uGetDataDuration(pDevice, DATADUR_B, cbFrameLength, byPktType,
+							    wCurrentRate, bNeedAck, uFragIdx,
+							    cbLastFragmentSize, uMACfragNum,
+							    byFBOption));
 	}
-	return 0;
+
+	buf->time_stamp_off = vnt_time_stamp_off(pDevice, wCurrentRate);
+	return buf->duration;
 }
 
 static
-- 
2.28.0


