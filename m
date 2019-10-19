X-GM-THRID: 6749323707377778688
X-Received: by 2002:aca:df41:: with SMTP id w62mr5768874oig.90.1571449412386;
        Fri, 18 Oct 2019 18:43:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:4dcb:: with SMTP id a194ls1336761oib.7.gmail; Fri, 18
 Oct 2019 18:43:31 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyPEt9UcIiYE2n7vZTBuGeMnJr6mqlOVGroCCAkavenJGwWKnv2lQru9P0azeMiJJiKfLAf
X-Received: by 2002:aca:180e:: with SMTP id h14mr10618922oih.142.1571449411367;
        Fri, 18 Oct 2019 18:43:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571449411; cv=none;
        d=google.com; s=arc-20160816;
        b=g9xZaOouLmtBlV27o8Lj2WAqSSlRBdwnfKu2HNvGayGI9KDKaw3WJ2TR4QKaEFYgsR
         /LHShlZZwtqTaEoLogXn213b9SCN10uiMmZB1alTSDb69PYX/+ffeELquJrcawhzSoU6
         n82VzCGuX2tA1yQSO1lHg6m/1sk/0vBJQUfBRSSwsd3jv0JOfnzx/EDCl9Bf7A44Ydov
         AtZ8HmfttjtUWG46wxdsh6rdCbqj1nftiB/N/QTL/x3Jy38kFjYsGSmApYGyJfWcO5t/
         GjKCU0ioO2EcXuf/xzSQ4oQESH460LIXhBRjui31W/zoCU+Fu3ZqSe+WHEQHsPl5nyal
         B76w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=cnnfZqZ5fwQqCCjnNyhwJ2goc9xfutjvnX+wemS1brc=;
        b=tNc8nZhe1s31el59ry7w8RrAM1p04ab9535jKznPmk8slVctoOmkMFplXj6bzGYF9g
         3wq397tZFLkcOT56WvkDC+IbWjoIet6pKJHLblqEGvdOwk6QsNKx+LGaacw/BxzpFlP/
         id3/0bmNSPW85L1pFXkJfvVOeH0xkU3AaThlTX5kSrZl71j+USs/FoM6dETL6tzjtDEi
         6Fv3eMItjcSeH/WxYsrzlKITY2AjHJbB91WzyYFcYr19Qma9H4pCDT0MVfafeW6/mcJl
         cia/odZ9VIPm6xDs5OEZutMmnbB5W7JFIb1F8RE9dDNtaF7+5kQifToSmwG09peEMjYE
         LcqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WYwJpb9a;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-qt1-x842.google.com (mail-qt1-x842.google.com. [2607:f8b0:4864:20::842])
        by gmr-mx.google.com with ESMTPS id k61si288017otc.1.2019.10.18.18.43.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Oct 2019 18:43:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) client-ip=2607:f8b0:4864:20::842;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WYwJpb9a;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::842 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x842.google.com with SMTP id j31so11870919qta.5
        for <outreachy-kernel@googlegroups.com>; Fri, 18 Oct 2019 18:43:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=cnnfZqZ5fwQqCCjnNyhwJ2goc9xfutjvnX+wemS1brc=;
        b=WYwJpb9aIcQanTkj0LeAz4QlWX5cSz5SosmwtND334yVab95ozFSEO5nOV4Gg697yD
         erLDwYH21ZWoufSVCLtfKfBeXCkdQfvBHq6SzkuQIcmL7QNHxAt8HSK4tMbgrCFsOztq
         jj38wibzL+BKzNcPmrpPvcv0XvcUMlPTlVGLMWLhMChcgPzo9x3F7L2/FbarOf3zJAU/
         OJ3MBRxiq6IKcFWceOnEluRgBGqsImFC/xwNZJxcxIOmnrut7VH9jBdZx3PODugx5Ttd
         kycwUqWEaefJfIZkOqQ4sRPWSpb38uYdF3FNqkNKD6liiBhfGL4o3+atYIJlofmkvVwx
         OBKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=cnnfZqZ5fwQqCCjnNyhwJ2goc9xfutjvnX+wemS1brc=;
        b=MtzOF4ZgjFKL65xsz0vbxO7U49ps5tbvpfioGuW+TNba+eco/MsoEYhsBMNoBMBa80
         sgVhIDRLV80Vw5ZUjblKHri8AyNnURYrD414YwJRNUkqNozeg0iZQ+jZL/er56z6dKWA
         SQM6a+Jk5OqtDFEsMIOfStuxyelTfY5A/XWWZ8ds/AlAARn6ifKFgejj0gQCdLXYmuhu
         hGt29ViIXRVCzKIx28730PR/EBUdJnjGu3LRthZokPkaAsnrLbkbZ7qfItp19lfzyUqg
         5WVteq2WMCSfAjZ53DuX0rW+mrQCb+xRAWtMGjnJ2rFZfWEYiqGjw774BpgbQfAmaNZ3
         PDfw==
X-Gm-Message-State: APjAAAV6zu1+YW9KqHf3YAuAMNrIOjHBpQ38P/fa+Gr5zpuM5nUBSnfx
	gthKswPFUGOYDTMCnQ2IpNqP7k+zfu4kPw==
X-Received: by 2002:ac8:2e0d:: with SMTP id r13mr12877460qta.54.1571449410955;
        Fri, 18 Oct 2019 18:43:30 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com (dynamic-186-28-46-160.dynamic.etb.net.co. [186.28.46.160])
        by smtp.gmail.com with ESMTPSA id f11sm3576352qkk.76.2019.10.18.18.43.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Oct 2019 18:43:30 -0700 (PDT)
Date: Fri, 18 Oct 2019 20:43:28 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] staging: rtl8723bs: Fix line over 80 characters
Message-ID: <eaa22be21885d04e47f1be2ad7be007182bf22bc.1571448899.git.jarias.linux@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
References: <cover.1571448899.git.jarias.linux@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1571448899.git.jarias.linux@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)

Fix line over 80 characters by wrapping arguments in function call.
Fix suggested by Julia Lawall <julia.lawall@lip6.fr>.

Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
---
 drivers/staging/rtl8723bs/hal/rtl8723b_dm.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c b/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
index c514cb735afd..0c2f3b2d4326 100644
--- a/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
+++ b/drivers/staging/rtl8723bs/hal/rtl8723b_dm.c
@@ -188,7 +188,9 @@ void rtl8723b_HalDmWatchDog(struct adapter *Adapter)
 
 		bBtDisabled = hal_btcoex_IsBtDisabled(Adapter);
 
-		ODM_CmnInfoUpdate(&pHalData->odmpriv, ODM_CMNINFO_BT_ENABLED, ((bBtDisabled == true)?false:true));
+		ODM_CmnInfoUpdate(&pHalData->odmpriv,
+				  ODM_CMNINFO_BT_ENABLED,
+				  ((bBtDisabled == true)?false:true));
 
 		ODM_DMWatchdog(&pHalData->odmpriv);
 	}
-- 
2.20.1


