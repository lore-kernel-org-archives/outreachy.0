X-GM-THRID: 6947867046648479744
X-Received: by 2002:a63:1109:: with SMTP id g9mr3969669pgl.88.1617676372464;
        Mon, 05 Apr 2021 19:32:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:7f10:: with SMTP id a16ls7025518pfd.7.gmail; Mon, 05 Apr
 2021 19:32:51 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxqymmKUxYQ77nF/yXukf8L36G8rDY0iZntM20qxyRuUshsxVELWc5g2bPCGaupWZpqRX2K
X-Received: by 2002:aa7:91d1:0:b029:1fe:2a02:73b9 with SMTP id z17-20020aa791d10000b02901fe2a0273b9mr25918206pfa.2.1617676371323;
        Mon, 05 Apr 2021 19:32:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617676371; cv=none;
        d=google.com; s=arc-20160816;
        b=1BJBNYR7R5Wf5OACw/uLDN1Tb/yR6pK0v2Vj6C3mEFzLa9f0XZ4/0c0txYgL7UPniV
         TnO6WFbveNBqF8xuN6/d/1K2DnjAc67w46TQNgof98d770UhwOhZwLpSZyD4PQaXt/SI
         k2ctMlIvQ7L5SS6DhbGGgjLlEAH4aY0t5mKKAT8fMNGCeQuq+w4dIu3W7PKK3CxnT5cg
         o7H1gIbR/99WsbUaA5f1yJLeIZDeCCE4o4bdLoVClXsG2MeQd//tKKrwTiGULSGyP4PC
         RH6jWAHfdf0O8xJ3ZJHlMT9tG6JLHJkHLAf/0uId2jiuL3UZW9dPnJGkBhlt3wsTxj2D
         PIZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=kc3RPHxu+J++goCeHYiszuO53o7w5S9ayyCjfILd0lM=;
        b=f6SgWqz7YK+968Zs2LmVCUrdT9myc70Z+b8PoYLV8a5ouG1YPMzHd9Gf7CE4VnussW
         QCxMx0rXonw4yIA5uKXXbECQCqZ6mqggQESW0kmL1xhtj0caxp/5Dzw0ZwDXcWbNaaBW
         nWSwyS2HKXVytdMrOdhQ0W8YczjFjNNAyNjiuBTDg3UFOIoPbuhTb+V1mvV/UprgXHxh
         dAKpW6Vp8jQ7Qi2bdIePyqjk3sGnc0ebdd6FyHqbJQvnC95DC4rB5TLPADeV9t8H4+Gd
         d00kTnZEKbJ71F2Lx9k55HmFoo4sbkjbesN2FyHW0rONFq6f1M07CLv4CRpBXXrsi5CU
         xAKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JRYHITpo;
       spf=pass (google.com: domain of deborahbrouwer3563@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=deborahbrouwer3563@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <deborahbrouwer3563@gmail.com>
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id f7si104768pjs.1.2021.04.05.19.32.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Apr 2021 19:32:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of deborahbrouwer3563@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JRYHITpo;
       spf=pass (google.com: domain of deborahbrouwer3563@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=deborahbrouwer3563@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1041.google.com with SMTP id t23so3855068pjy.3
        for <outreachy-kernel@googlegroups.com>; Mon, 05 Apr 2021 19:32:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=kc3RPHxu+J++goCeHYiszuO53o7w5S9ayyCjfILd0lM=;
        b=JRYHITpo6w4w07x9yRv9Y9YpxqOUkRdrcY7yhtNdP5rDzdROEP2WMn26aq0pTDHK1T
         ybmQVLS7toVRvKURVxYTDZc0ApGeOYbGJVoeq1vcSbp9gEffzjUTWmlDLjqTLv+SraPk
         GmZetivej+25TtENIpyBrjUBHl/Siq/9Bv68wmhqD9PKiNMmmi0GD6x3Fb1kB/wvJYGa
         wbuEn1uafdMLoIT29uETd8/6IvNGUig3tRIMgqb1up2jvShYxR8kZaOiZP4TdXacYVpL
         TCCcrjuanWl/IFfwJMwuzchhVBu3eZWAWygQ8oUy7FMLz/g9WhdUyF02omrB+T/byJGv
         aIvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=kc3RPHxu+J++goCeHYiszuO53o7w5S9ayyCjfILd0lM=;
        b=liQdHcu7nHX0CtcRosDRpQ+uWNNBhA0XnPqvMq+CYp8iJ09z56aNIBLVawOsVqP018
         PTa+hGbFU44sxlzDbMa6NmMksst5T+d1uGt+nfaKytXWQMP9PR21ig8D53iqzEZAGJjT
         VgpfEXf2N8csVHmirJEEFfikRyr1N+WUyHFB2sendk88/1W2CPmO7iY83D0PI2UPfsql
         TGv+firR9rO8V/QZ9PLluUjGxDyVOR9kSodAxaQZQXqPXx+uSaUz/Y7qaK5ib0sW7eix
         qe+41ICa24HuzzVI24T9CD1NKkjc9bSWzQzpDOaK+G9xNrVQWGjhdCpT655GvMDMrHIm
         ocuA==
X-Gm-Message-State: AOAM533RDGvmZlg3aCXy/kXGqicqe4E1U2vFuw8sxD98RiVhbpaq/Wzp
	TXsEFRzOIE74kFAC/IbPjzY=
X-Received: by 2002:a17:90a:4a8e:: with SMTP id f14mr2128684pjh.84.1617676371091;
        Mon, 05 Apr 2021 19:32:51 -0700 (PDT)
Return-Path: <deborahbrouwer3563@gmail.com>
Received: from djbComp.hitronhub.home (S0106ac202ecb0523.gv.shawcable.net. [70.67.120.89])
        by smtp.gmail.com with ESMTPSA id e7sm281196pfv.107.2021.04.05.19.32.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Apr 2021 19:32:50 -0700 (PDT)
From: Deborah Brouwer <deborahbrouwer3563@gmail.com>
To: Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org
Cc: linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com,
	Deborah Brouwer <deborahbrouwer3563@gmail.com>
Subject: [PATCH 4/4] staging: rtl8712: add space before binary operator
Date: Mon,  5 Apr 2021 19:32:20 -0700
Message-Id: <6db3ca92022376d162289174e201c79017b366db.1617674639.git.deborahbrouwer3563@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1617674639.git.deborahbrouwer3563@gmail.com>
References: <cover.1617674639.git.deborahbrouwer3563@gmail.com>
In-Reply-To: <cover.1617674639.git.deborahbrouwer3563@gmail.com>
References: <cover.1617674639.git.deborahbrouwer3563@gmail.com>

Add a space before the binary operator "|" to comply with kernel coding
style.  Identified by checkpatch.

Signed-off-by: Deborah Brouwer <deborahbrouwer3563@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_xmit.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/rtl8712_xmit.c b/drivers/staging/rtl8712/rtl8712_xmit.c
index ad9ea05504db..116cb812dcb9 100644
--- a/drivers/staging/rtl8712/rtl8712_xmit.c
+++ b/drivers/staging/rtl8712/rtl8712_xmit.c
@@ -368,7 +368,7 @@ void r8712_dump_aggr_xframe(struct xmit_buf *pxmitbuf,
 							0xffff0000));
 
 	/* urb length in cmd_dw1 */
-	pcmd_hdr->cmd_dw1 = cpu_to_le32((pxmitbuf->aggr_nr & 0xff)|
+	pcmd_hdr->cmd_dw1 = cpu_to_le32((pxmitbuf->aggr_nr & 0xff) |
 					((total_length + TXDESC_SIZE) << 16));
 	pxmitframe->last[0] = 1;
 	pxmitframe->bpending[0] = false;
-- 
2.17.1


