X-GM-THRID: 6668981360875536384
X-Received: by 2002:a24:43d0:: with SMTP id s199mr4973420itb.17.1552743533008;
        Sat, 16 Mar 2019 06:38:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5e:d817:: with SMTP id l23ls4664894iok.2.gmail; Sat, 16 Mar
 2019 06:38:52 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyuqbdNTY2sygswst1Ngf8xppCGq9LNZru9hgbKwPOkoppDXxOzua7QnTwVykVnadprk7Of
X-Received: by 2002:a5e:cb0d:: with SMTP id p13mr5626625iom.17.1552743532163;
        Sat, 16 Mar 2019 06:38:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552743532; cv=none;
        d=google.com; s=arc-20160816;
        b=D9KIGR0RMfAi5ckMKDxu+SLoWO5ckvWwICq7zltVmen0X7vMpefFsQHktTmso+VKpU
         JbGPkBzx3JWPbvjyK587w53PQ77QcttViLqosGrs4JOa9KeZIV0Owm1s53KbnS38KeGy
         pUqZ95oDBnZm84o24ZaDjh3kMbZ75KXpHt9qx0F2SWHIKu7pPHqb0aFBMfntJgFhljz2
         BRqmRrURgPIvzn+kT0It0nBcEgvRfVyDRDvVN5lWnQ0qW+FE+nf41YLcXVXi4ks5H2tZ
         IkJrlrUSzbxbESGqdEeZAkDYs03h8M/a8By/tVYWf8MAWi3j5qyGS4fOKDFRq9B3r1id
         W8zg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=zbkU9zWrcGQCcQx+ndH9+H1TXOwBpVMSePDvvtGo+ro=;
        b=lEiExLiUUmZyWlstdBHCf8ExsXWzRf+o+8KKNhrwxVezHJEzSarZ3uHe8Qeqf1zLEb
         GNXUmhYjsguou9JoLs7mYUoj2vHSjGvxtaXPAZH6T3nyZ7oVkC2EIrZyAP+3v5TJRd1p
         uETUTNKzR+h3M0d1AbyGFEpDLrQzXml9gfcIRHzXBDCw/Mu/W56GWwGa9tRDpbq+zKzR
         bJj9sOnc7VxDCci7H0Gs0XTchu73g5LXjyjGQbDRCyOG72afaXNQh5qUzxigtRS3IJ4l
         hQ2CCdId9RD4/CJ1td7bauBydW+VYEsqv7lC099TH3gT8PjUNcfHneaGYGiwMZN2IhIN
         xo1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ua4xBwgS;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <sanjana99reddy99@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id 65si573402itx.1.2019.03.16.06.38.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 06:38:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ua4xBwgS;
       spf=pass (google.com: domain of sanjana99reddy99@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=sanjana99reddy99@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id q206so8353852pgq.4
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 06:38:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=zbkU9zWrcGQCcQx+ndH9+H1TXOwBpVMSePDvvtGo+ro=;
        b=ua4xBwgSxIBPvJpop8H5S1vu8vFb5Jd1U3C7wIYHJlnZMxHC9NPahW0hbjKk6vF5/E
         hr2hIVVmZok0o0dARRYfWN34m4ib2idpPBBrqD2Q3NRIZqleasv64JK9MeRf5xxG+cAX
         Twf3aNraiSRgiMwNlnCAK2LEm9PFN8flDoogcFkbC6BPMTsozVjEFcxWXo2suaCbzWmr
         JYTAVEu0HrPpQRjPR3M/IfpW1DaQERqw1/VOxck6jnedCKkkt5WffiloG73kldwrgEzy
         1hr8yjMzeBWw6NEvm6IR9zIsNQ2r6pDE42ZVmZePHS7sd1CpFPPv+JO76i0+J4PYIoRO
         r+jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=zbkU9zWrcGQCcQx+ndH9+H1TXOwBpVMSePDvvtGo+ro=;
        b=jGZT9bEhoqvwGLlkr+9xwHHPlhWna9qOWlRIrmCbFn4XRtF9miSEBIahwj+9E+YDXS
         1GN8lDukYGdiCPVQRuehQg7b2ZMObL4GvhNEncanW99bcndm5drB3WFYB+2D0KDSByw6
         5aN3NyXpsKUr8M6qHXW6dDDWW9BGiV3nhRehvh8msu07S4NW8UanKMF3Yh/4v93UceE4
         Y6s9HHnfpQZOyQhtPbtE516CxF3nQPGbJC//kgAjpS+qurlyFtPfurZTsYaozRfe4S9K
         scaCxwT77fjnDBz7LaztJaKkDUGy3wdADCC6tf5DRzAXqR150I1hadvO5P5+xZETnYsz
         +B1A==
X-Gm-Message-State: APjAAAU8pU3QzITsKYmByXGdRpWbDZKNDPnJc4WS0MkdaBAbHo8o1wvZ
	0xICSxrcX9dmcxaF12eGXIM=
X-Received: by 2002:a63:e106:: with SMTP id z6mr8606097pgh.418.1552743531116;
        Sat, 16 Mar 2019 06:38:51 -0700 (PDT)
Return-Path: <sanjana99reddy99@gmail.com>
Received: from sanjana-Inspiron-5570.domain.name ([219.91.254.23])
        by smtp.googlemail.com with ESMTPSA id z6sm22683635pgo.31.2019.03.16.06.38.48
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 06:38:50 -0700 (PDT)
From: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Sanjana <sanjana99reddy99@gmail.com>
Subject: [PATCH 3/3] Staging: rtl8188eu: rtw_recv.c: fix a space issue
Date: Sat, 16 Mar 2019 19:08:40 +0530
Message-Id: <20190316133840.9027-1-sanjana99reddy99@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190316133711.8968-1-sanjana99reddy99@gmail.com>
References: <20190316133711.8968-1-sanjana99reddy99@gmail.com>

From: Sanjana <sanjana99reddy99@gmail.com>

This patch fixes the checkpatch.pl CHECK in rtw_recv.c file:

CHECK: spaces preferred around '%' (ctx:VxV)

Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_recv.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c b/drivers/staging/rtl8188eu/core/rtw_recv.c
index fc72e797f8e5..f4b418cac1db 100644
--- a/drivers/staging/rtl8188eu/core/rtw_recv.c
+++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
@@ -1763,7 +1763,7 @@ static int recv_indicatepkt_reorder(struct adapter *padapter,
 			preorder_ctrl->indicate_seq = pattrib->seq_num;
 			rtw_recv_indicatepkt(padapter, prframe);
 
-			preorder_ctrl->indicate_seq = (preorder_ctrl->indicate_seq + 1)%4096;
+			preorder_ctrl->indicate_seq = (preorder_ctrl->indicate_seq + 1) % 4096;
 			return _SUCCESS;
 		}
 	} else if (pattrib->amsdu == 1) { /* temp filter -> means didn't support A-MSDUs in a A-MPDU */
@@ -1771,7 +1771,7 @@ static int recv_indicatepkt_reorder(struct adapter *padapter,
 			preorder_ctrl->indicate_seq = pattrib->seq_num;
 			retval = amsdu_to_msdu(padapter, prframe);
 
-			preorder_ctrl->indicate_seq = (preorder_ctrl->indicate_seq + 1)%4096;
+			preorder_ctrl->indicate_seq = (preorder_ctrl->indicate_seq + 1) % 4096;
 			return retval;
 		}
 	}
-- 
2.17.1


