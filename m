X-GM-THRID: 6746399399110246400
X-Received: by 2002:aa7:9907:: with SMTP id z7mr1390034pff.192.1571285038414;
        Wed, 16 Oct 2019 21:03:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:3265:: with SMTP id k92ls246505pjb.1.canary-gmail;
 Wed, 16 Oct 2019 21:03:57 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzPJ9RxuMQC23WFeXHk0bxJq4R9QEs7ck+dFOA9jotvCya2IXp4aZcm2CVlWCZu8z4yhr3i
X-Received: by 2002:a17:902:b703:: with SMTP id d3mr1854805pls.194.1571285037298;
        Wed, 16 Oct 2019 21:03:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571285037; cv=none;
        d=google.com; s=arc-20160816;
        b=LCLFCeyZOPi2t4z5AJ1Xn75a8CD6TrkQK9BXrLKpttYuLR3eeiluDV1eMQCM8fAJ1A
         Hu3k7fstweW01WGATOoIQ9clPb4PDf/VJDDfD75ump1P+KPMeFaUqL6uZQ6lN1OXWRYd
         0bwM6T8/7vUcH6WmPJbvG4FLh80arZw+EDDKYjQMNB/9QMpeBeqTKDAA9pocpeRR2T+a
         q/xx3yZAjK+FphBllEVAz0mFK3h/Dbi4QetAr8T3Xmzy3Xq4W4VJDLJ+Ox9WE7dr6g+I
         NrJaFGzQkDWXxd/EX+3ozOT+ydAFIZwB4djuojVWdwCpcZouFBnHKEv29iVtsofIJ5QG
         pYcw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=e5/hd56PdYBmZgAhvmOymQnTNq9wtHGH2gxjW7u+Wrg=;
        b=j0bFTWNkTAboRFTsgi8w96mVu1Xp/8qwkgBeHjesxrSxDjioCDHBpODK8TS9jvJBB+
         gpVDE9fx8M0IoscAGrIYXYNGtJOjnzxem5zrmoUplVQC4zuI+habvXhP/IpXFV0R2ZDA
         o3WwipH4KKxQISaMN5/UStPKmMkCX4TUd7z5iScOPAUA/1oAMupKq7sVhbhxc60qyxi8
         b0YDYSYAyU0yH/a7/pDSl9p9crtMupG319FpjJd9fH2jSq1nU4eS1hdaS1vd7jiofHKB
         uzEI4vLCse6VMm1xrMWBCqOk00IMfn8/rYsZd+j9583z9eM1ZlgYuFWRMRpUIo0RRrf6
         YlxQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tNc4UvXZ;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jarias.linux@gmail.com>
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id fh7si376859pjb.0.2019.10.16.21.03.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Oct 2019 21:03:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tNc4UvXZ;
       spf=pass (google.com: domain of jarias.linux@gmail.com designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=jarias.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x744.google.com with SMTP id h126so617147qke.10
        for <outreachy-kernel@googlegroups.com>; Wed, 16 Oct 2019 21:03:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mail-followup-to:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=e5/hd56PdYBmZgAhvmOymQnTNq9wtHGH2gxjW7u+Wrg=;
        b=tNc4UvXZjcu1iT3/MGeEdi5t338JA8R2rG5MyuN4xV1C9McKFA5n2TAGwiMgrIAb6X
         e+Tyt/ZFGBbT+/+fVYD5qZLWLLOX2UuJzOnRL7S6qXvZ3eJNZfJFtcwkkrmcwNmlYU71
         5K9ebOvlbSmcLAXLNyfvGXxefgQM2tt7Lke0eUPBmkmifOeMlxUy+OiOEtmZ35NLR7dC
         cve3aZ6bszikd8eHClESckceU8MGBE9LDbC23eFr7O498w1PYuFpznHdFqFOkxWBuXjT
         HgZSps5acS7WGjatrwLai+cGNhv9Q/MLr7ZfNKawzvbYsBqkxMyw4Rh6LE00qagVoiZf
         kUgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id
         :mail-followup-to:references:mime-version:content-disposition
         :in-reply-to:user-agent;
        bh=e5/hd56PdYBmZgAhvmOymQnTNq9wtHGH2gxjW7u+Wrg=;
        b=oaPH8weGapT4j4HSXKEoMIAlt5NG3yDTmG4REKPl4OxvPTMtrq4VtEbLDw4eWQYOB4
         +EqgBoVZ5BeKur7EcKV1ctIlz9I0B9MHaBkGdZzXgKlpduUsttONNB4B6C+h5sulCfCg
         rpXr2DL2lPXpzRFWpoLqCPgE17HqBoO025PD1Gf1yVTu0Jbu+VRNEEqOun3sCqk4CbaL
         Eup9YxW86m+f+2DWQqmY4RssJdHuAF42XZSd+sYqyVA6Ca0DZHOk1fU/cG2/gEvt+hT7
         YjJlXNQ7lllEgl3xaBGLawVSzakwar4a3cSZ1Kc77rvfBQp7x0Kwg79YhX35iosMji6x
         hBuQ==
X-Gm-Message-State: APjAAAUQUnJwTJwAJmWLp9QZqNtb1LS84EfPqrSIM8IoTImaLDh7brdh
	qi9WZWUWRbSNEa/98+y3abiGiej1r8Qe8g==
X-Received: by 2002:a05:620a:13f8:: with SMTP id h24mr1367035qkl.347.1571285036470;
        Wed, 16 Oct 2019 21:03:56 -0700 (PDT)
Return-Path: <jarias.linux@gmail.com>
Received: from gmail.com (dynamic-186-31-3-221.dynamic.etb.net.co. [186.31.3.221])
        by smtp.gmail.com with ESMTPSA id g8sm899185qta.67.2019.10.16.21.03.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Oct 2019 21:03:56 -0700 (PDT)
Date: Wed, 16 Oct 2019 23:03:53 -0500
From: "Javier F. Arias" <jarias.linux@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 5/7] staging: rtl8723bs: Fix indentation warnings
Message-ID: <166ffc747a4212f81d26b03883dbc04d64deed56.1571284318.git.jarias.linux@gmail.com>
Mail-Followup-To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
References: <cover.1571284318.git.jarias.linux@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1571284318.git.jarias.linux@gmail.com>
User-Agent: NeoMutt/20180716

Fix indentation warnings to improve the code formatting.
Issue found by checkpatch.

Signed-off-by: Javier F. Arias <jarias.linux@gmail.com>
---
 drivers/staging/rtl8723bs/core/rtw_security.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_security.c b/drivers/staging/rtl8723bs/core/rtw_security.c
index fea347e3a04c..ea6e5bad2a51 100644
--- a/drivers/staging/rtl8723bs/core/rtw_security.c
+++ b/drivers/staging/rtl8723bs/core/rtw_security.c
@@ -1489,7 +1489,7 @@ static sint aes_cipher(u8 *key, uint	hdrlen,
 	aes128k128d(key, ctr_preload, aes_out);
 	bitwise_xor(aes_out, padded_buffer, chain_buffer);
 	for (j = 0; j < 8; j++)
-		 pframe[payload_index++] = chain_buffer[j];
+		pframe[payload_index++] = chain_buffer[j];
 
 	return _SUCCESS;
 }
@@ -1625,7 +1625,7 @@ static sint aes_decipher(u8 *key, uint	hdrlen,
 	payload_index = hdrlen + 8; /*  8 is for extiv */
 
 	for (i = 0; i < num_blocks; i++) {
-			construct_ctr_preload(
+		construct_ctr_preload(
 				ctr_preload,
 				a4_exists,
 				qc_exists,
-- 
2.20.1


