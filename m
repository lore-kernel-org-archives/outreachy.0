X-GM-THRID: 6758464167600979968
X-Received: by 2002:a17:902:68:: with SMTP id 95mr890620pla.117.1573608976266;
        Tue, 12 Nov 2019 17:36:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:858d:: with SMTP id m13ls168973pjn.1.canary-gmail;
 Tue, 12 Nov 2019 17:36:15 -0800 (PST)
X-Google-Smtp-Source: APXvYqwVqESDMSS895JnzWuZAuvFSSa+aZ+47hOa/mJQRqu9iftnmEejweazXqTJilMjuWdRv01U
X-Received: by 2002:a17:902:a717:: with SMTP id w23mr919924plq.27.1573608975386;
        Tue, 12 Nov 2019 17:36:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573608975; cv=none;
        d=google.com; s=arc-20160816;
        b=bWoKnn0jWcSNcG23YT7Kqrknb+F4p/T9wTo9Xew+m/eVVKtTWtblQPtMb+pHyJXjQX
         oHcVFSyLGV6vDVPlnzq9PxijY5fhplBrA9W12UFcMbQI288e5ZPKE9SxVmlSEpGdtb+q
         cLGSAHVxxbj6skpe8XKpng6akxhkjeOEdfuRjl+kV4yvFGoBjeZlidj2Iki+W+aLsxvQ
         191AxS+DmeR4QQhw+GUNMJ4/vA81cJu7Ei3Wd0RY6xf59M2XDU3IHUrCtKrnLq6UyMS0
         fSN3bxSJk6G6i9XUIP7H6tOvuY+pNIcTJR/g3cKHVWnjk07FX0Kit7Cf/w83y0oJH98V
         BA9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=gUSLxwPQi55Mc5QtKsqunj1QHZwBuATEFp6b0WuD06k=;
        b=zTW1ny6pdAeX+Q5GEvcfB7fEqCCOCVFx1Y53fwLH+AooPfDyVPLJWST9CcAUSGjROs
         o5rndwGOqLHTPcA6XSn7lUqAbbhF+mSH9o3ctyXM7cg5b1OZsmTwRAaAP/cXFDi7LBYC
         qdniPeUZjqbZIcyFgPHv/FuxD0ko9d59jnUB2L2+DTDgS1rMF2XfPYsRsFxAKB+7VtBg
         +ENHyJz6K2FVA0PCy34JOp9W91sJO18dlRKm01ULu9CM2SkxvU+uRCfoqo0Xb+yGqvwf
         oVG68HvtLka/cJgVcSiMd2ZbRPc0MNIa/LR24aakLAl1sgBcHibTOlnPpFylR1krRPPS
         Y/bw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RZmDnx+D;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::b43 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-yb1-xb43.google.com (mail-yb1-xb43.google.com. [2607:f8b0:4864:20::b43])
        by gmr-mx.google.com with ESMTPS id w63si20701pgd.2.2019.11.12.17.36.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Nov 2019 17:36:15 -0800 (PST)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::b43 as permitted sender) client-ip=2607:f8b0:4864:20::b43;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RZmDnx+D;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::b43 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-yb1-xb43.google.com with SMTP id k206so325095ybb.5
        for <outreachy-kernel@googlegroups.com>; Tue, 12 Nov 2019 17:36:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to;
        bh=gUSLxwPQi55Mc5QtKsqunj1QHZwBuATEFp6b0WuD06k=;
        b=RZmDnx+DAH7YZCsgW5bC22U1rj9v7pff/+Sx8Ho2rNj2OYcx3TRTHEiGU4MePAS7sh
         DwoM+gRWt2PYna81gX0i7vHQdSmPLFnG4DUO9jWWgZrGLzs0/Z/cUkTZLFz7g2lFjxXF
         k+0XcSzvyr3BEYHO7I1r8MaqrYk3Fd7UkiviEEZcvxY1xAuIx9xbhBbWLQUPE9H87gbD
         tMSKGPAIm5/1fZhZzeLGk/kqIszvxM15QsM0eSORaNAooj9qifi+X0/sdoNRcYdxr/Dk
         4WZlDVJsJutYcV4oDN1Y8eYj8kVk9ETQtFUzU5Bo9WKu0FcC0B3ScWg0f+DqQhj0uzv3
         hZbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to;
        bh=gUSLxwPQi55Mc5QtKsqunj1QHZwBuATEFp6b0WuD06k=;
        b=YQmN7M8csRUj1sGEk8ymeJHyLSabAXYKYK6HPfbWgg1SJ74On0KZQMxCONZ5Y9WIX4
         qeJg53tJ8Gv03YXgba3JlK/dCFyIQP3qiYiL6nzmE7FXK6rPU63+uj815iNCWe21zQC8
         FfhZK4PAEcQka1UqOM49QswRWMXbGt3wjgH4VuKH412vA596FMusuFhXftxgLvNpAmmM
         ylXvt4/3n1Rv+GJgVkV30NXdXUTTaCH78DHSq4paoqCiFBDxjiBXae08Pu+FZF8rtSDM
         FMkE9m7BYtKrwtrsotDexBk8PO0cDgC4DNvFi/Q9ZHQTGUXQ8U4eHDghyM8FYh4HRS62
         ZNUw==
X-Gm-Message-State: APjAAAXqXGJTZ5qA8TSiThXDB5nAA8mw5xMYXlTGEdRnx1bTp2YWQInl
	MzEQb5PBlFZuLFu+nraszsg=
X-Received: by 2002:a25:e04f:: with SMTP id x76mr812661ybg.114.1573608974579;
        Tue, 12 Nov 2019 17:36:14 -0800 (PST)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com ([196.247.56.44])
        by smtp.gmail.com with ESMTPSA id f66sm521500ywf.110.2019.11.12.17.36.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Nov 2019 17:36:14 -0800 (PST)
Date: Tue, 12 Nov 2019 20:36:12 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v2 2/4] staging: rtl8723bs: Fix unbalanced braces
Message-ID: <ff5bb9f30fd27f68a9b8977094d56c844ba307df.1573605920.git.jarias.linux@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
References: <61ec6328ccb22696ccc769ce9fbbe26fd00cd04a.1573605920.git.jarias.linux@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <61ec6328ccb22696ccc769ce9fbbe26fd00cd04a.1573605920.git.jarias.linux@gmail.com>

This patch fixes unbalanced braces around else statements. It also
removes an empty else block.
Issue found by Checkpatch.

Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
---
Changes in V2:
	- Reduce the scope of the change given that the previous
	  patch had to perform some of these changes.

 drivers/staging/rtl8723bs/core/rtw_xmit.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_xmit.c b/drivers/staging/rtl8723bs/core/rtw_xmit.c
index 44fc604ea5b7..5856c6e34922 100644
--- a/drivers/staging/rtl8723bs/core/rtw_xmit.c
+++ b/drivers/staging/rtl8723bs/core/rtw_xmit.c
@@ -1844,8 +1844,6 @@ s32 rtw_free_xmitframe(struct xmit_priv *pxmitpriv, struct xmit_frame *pxmitfram
 		queue = &pxmitpriv->free_xmit_queue;
 	else if (pxmitframe->ext_tag == 1)
 		queue = &pxmitpriv->free_xframe_ext_queue;
-	else {
-	}
 
 	spin_lock_bh(&queue->lock);
 
-- 
2.20.1


