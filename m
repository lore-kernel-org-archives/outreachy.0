X-GM-THRID: 6947867046648479744
X-Received: by 2002:ab0:3c4a:: with SMTP id u10mr15150244uaw.11.1617676369779;
        Mon, 05 Apr 2021 19:32:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac5:c2ca:: with SMTP id i10ls895179vkk.5.gmail; Mon, 05 Apr
 2021 19:32:48 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwoZPz3anVL6HdQ9sAsitbTJtaqO7+aGoB1m31kIN4XAcn9qP23OMmR4PczQJGPwZXjgnLa
X-Received: by 2002:a1f:9345:: with SMTP id v66mr15824834vkd.22.1617676368753;
        Mon, 05 Apr 2021 19:32:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617676368; cv=none;
        d=google.com; s=arc-20160816;
        b=aRFOB4e8rDi6PkrTWXK9lKlCbn7RHIBqh3qYKdWAcrxIr1E8T7SWeMWroPkZrYeqTp
         ZXpOKikFVn4FWLTG5t1SSRESsfk8YzcU8aG0DNyVSTNLw87CQTn+kaY2eZ2e80HlNB1C
         Y8yi40duvmWqDoGkUvEQQ5OAvZIOZh9karcvV8VnvXhlqE4rhtZ/abgTasXDEZZcmxtv
         GHAEu9XcbrZi66upsBBDXymGtEWLvfzbRh5VqhMtPs4k9a9KrvLbYZFPgXQgVXqP8JLa
         nF28BSHwBq8y696zx8QwIHe4jBBrBEPpEztoFzzoCxPlh+NNzv2TQpR2zJ+2+izapy/H
         buRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=3K8MDaPlGRbY3ftET9m0Ij8E3KZKZRukEowLKCuMZ8g=;
        b=LNYGDFE4To/t8jolSnGeAkWe1iLtnk7bM+isP1DHYbePerB+ARODvjsj6crPR8ZT+T
         NlQoEf8fgCBnHQXG7ZRL9xNtQGNR92UaSqh5Z6qOe7hoV/mi4GnYDObjoYlX7b0W4MfX
         Dtb50GHkrDDGuTN8FauytH66rVtEE5NwAjEsWNxmsmjAhfitN1XxF39MHnQXm8q3HW4s
         19OqJzMFrdLw4XSm5Ka8krd3fMacS0vKgc7evbP6XBdkBEF/L6BFMwBmEWpcm1nt39bK
         rDwD+PEyJGEEGbjIVoiwEBVgeCuWdlBimR8+FIzayG4N1TNUbwcWsZB6ZUW46fl6A5oe
         DsQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nEImKKfq;
       spf=pass (google.com: domain of deborahbrouwer3563@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=deborahbrouwer3563@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <deborahbrouwer3563@gmail.com>
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id r17si1064599vsf.2.2021.04.05.19.32.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Apr 2021 19:32:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of deborahbrouwer3563@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nEImKKfq;
       spf=pass (google.com: domain of deborahbrouwer3563@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=deborahbrouwer3563@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x644.google.com with SMTP id y2so6660465plg.5
        for <outreachy-kernel@googlegroups.com>; Mon, 05 Apr 2021 19:32:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=3K8MDaPlGRbY3ftET9m0Ij8E3KZKZRukEowLKCuMZ8g=;
        b=nEImKKfqFD+OW8rN4yJUDbXbw0X90WNZZuYPkrqxC3Owy2H7h2Hd56p6DL8eNiypJl
         vPQZdCY63aQUMfIFzLAJJrg+jzc/AogX3MBoNWjB51ibpWbezLNNHxSEsIL02HKKIGWx
         wde80EQDRXdKBVV3VNsj33XHH3q8Locyd1XkiYIDnA7VszrHm+VXjIlwIzuknYDzcNsA
         1a0hhVTEOSP4fWC1dTaIY8ilYjyLO0bN1qLBvXdq+jtLYg5eluZsKhdx9EV4O/RUoUzN
         4wlqbnICJ/TTFnVpQP5S2793FkBEGkgINBX/X5tNO6lLrvREZN+i6FUuWze2WWRCo6LR
         8jQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=3K8MDaPlGRbY3ftET9m0Ij8E3KZKZRukEowLKCuMZ8g=;
        b=a+GZg0045+iUtcuXc7gNZKy5s+tW7/i1WCZ0CT1MD7G2hiHrJDsr/kyZOsM4l9zDaz
         Btk9AAiIt97VrsLL70LkkgcaitZ+M4TSxIDH5oVuw73aDds49gtt+sqBqsvIDDvSSy8+
         ctV1EiQuC79tfFOi65wdoCP3vvcoAsHn0dOa5ZQ/6Nnn+5R1X2zjAXGGUDMZ2BGvJDYp
         HowxB5X9nj4yTootLUoLUM5rg0KKzJd+b3Pbji+8Mqd0AWv6NYs4489OP8BPki/rW176
         9mDzHCEPh0To1y8Hhg4WrfOzRBNtMOtwRq67SqgSAFl+YbTslY2razM6P+6CtDlmQCuJ
         jTKA==
X-Gm-Message-State: AOAM530ETZZVpAPsXVh9lz0xi5YPbFsuLST1BGp35Xyvht1n6PG0IX8G
	ZJukL9gZkT5tpwZrEPyU7TY=
X-Received: by 2002:a17:902:dcc9:b029:e9:3900:1c9a with SMTP id t9-20020a170902dcc9b02900e939001c9amr2176382pll.9.1617676368264;
        Mon, 05 Apr 2021 19:32:48 -0700 (PDT)
Return-Path: <deborahbrouwer3563@gmail.com>
Received: from djbComp.hitronhub.home (S0106ac202ecb0523.gv.shawcable.net. [70.67.120.89])
        by smtp.gmail.com with ESMTPSA id e7sm281196pfv.107.2021.04.05.19.32.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Apr 2021 19:32:47 -0700 (PDT)
From: Deborah Brouwer <deborahbrouwer3563@gmail.com>
To: Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Deborah Brouwer <deborahbrouwer3563@gmail.com>
Subject: [PATCH 3/4] staging: rtl8712: remove space after cast
Date: Mon,  5 Apr 2021 19:32:19 -0700
Message-Id: <b1ba94644f5204505623ffc64614671aac30bbd8.1617674639.git.deborahbrouwer3563@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1617674639.git.deborahbrouwer3563@gmail.com>
References: <cover.1617674639.git.deborahbrouwer3563@gmail.com>
In-Reply-To: <cover.1617674639.git.deborahbrouwer3563@gmail.com>
References: <cover.1617674639.git.deborahbrouwer3563@gmail.com>

Remove the unnecessary space immediately after a cast. Identified by
checkpatch: CHECK: No space is necessary after a cast.

Signed-off-by: Deborah Brouwer <deborahbrouwer3563@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_xmit.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl8712_xmit.c b/drivers/staging/rtl8712/rtl8712_xmit.c
index 4be81c2546fe..ad9ea05504db 100644
--- a/drivers/staging/rtl8712/rtl8712_xmit.c
+++ b/drivers/staging/rtl8712/rtl8712_xmit.c
@@ -228,9 +228,9 @@ void r8712_do_queue_select(struct _adapter *padapter,
 	struct dvobj_priv *pdvobj = &padapter->dvobjpriv;
 
 	if (pdvobj->nr_endpoint == 6) {
-		qsel = (unsigned int) pattrib->priority;
+		qsel = (unsigned int)pattrib->priority;
 	} else if (pdvobj->nr_endpoint == 4) {
-		qsel = (unsigned int) pattrib->priority;
+		qsel = (unsigned int)pattrib->priority;
 		if (qsel == 0 || qsel == 3)
 			qsel = 3;
 		else if (qsel == 1 || qsel == 2)
@@ -359,7 +359,7 @@ void r8712_dump_aggr_xframe(struct xmit_buf *pxmitbuf,
 	struct tx_desc *ptxdesc = pxmitbuf->pbuf;
 	struct cmd_hdr *pcmd_hdr = (struct cmd_hdr *)
 		(pxmitbuf->pbuf + TXDESC_SIZE);
-	u16 total_length = (u16) (ptxdesc->txdw0 & 0xffff);
+	u16 total_length = (u16)(ptxdesc->txdw0 & 0xffff);
 
 	/* use 1st xmitframe as media */
 	xmitframe_xmitbuf_attach(pxmitframe, pxmitbuf);
-- 
2.17.1


