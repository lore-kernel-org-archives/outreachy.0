X-GM-THRID: 6751912583325810688
X-Received: by 2002:a25:8111:: with SMTP id o17mr9359325ybk.354.1572121790595;
        Sat, 26 Oct 2019 13:29:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0d:ea09:: with SMTP id t9ls1342765ywe.3.gmail; Sat, 26 Oct
 2019 13:29:49 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzaPoH/npeK2iFiFoPVLx5IidK5YS+ZgQhUyuTm/Av6D2xjESDOQHROhKYBLK3TIe+nZvwH
X-Received: by 2002:a81:a40f:: with SMTP id b15mr8066807ywh.474.1572121789008;
        Sat, 26 Oct 2019 13:29:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572121789; cv=none;
        d=google.com; s=arc-20160816;
        b=sszz/co+ei3f3/Th4FA/HRI+MIIsywBwiphOGJw5SIGltj6goxiE/TIfKnrn/sTcNu
         8WYmyPQSICt2QvTLf9aUegHDh4mWtgRx9/ykIU3XiEoE6ccp3DQX+5NIjUGJZNh5xNSi
         RE1cPnZJT0mgzCj/KWfxsC6HBw1AcmECl+NEfgcUrUAC5eMXEmc5jtcTdOggRozWhGva
         /TzNc4sVNxtlMQYl7FqmIirdHs0E/+2/+py4SZFIDm/Vp1WMxOf95BMhFSs+UDZEIaeb
         SlDNPX9ziIzayLmcMU8iKcY8DYsA3CUd0fbQIdluOP3OSjMENEtKfPhCVZ1IbQnCCAok
         R8eQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=FGfKeWR+ALU6IXEki/hlm0ra+LCsfescC58IXZqU9BQ=;
        b=0hjnOGxFmQaLe/j1zZOsnAxfHgJpwXHx8fk3L+svCvYr5PmAeP3s2CGSxMYJwMN5nW
         nW2LZU4KOf5Y8gAEpMqMW4PEETeRMPwMGF1hFnPwgrUlHvFGIByxIJs6VHfVteA6Ovso
         yjQTcDrKDNIOUnXC0lgvPTutP7/m4SdXUGO2Y3y3rPAVNepUjGd4AO/b0gYovnctAMUo
         ANDu0msr+hQN3AqX+lltRRqrax0DIBo5OHoIbyO/enObaDuAF5ejThxzCYQo0oSv0irV
         edgtMycrWY4IZ6XO1p/BvyWu4zGgN96q/eUBrBZD7y9yahbdqhtZphXvo1w3BOYilxll
         EDEg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YJ37QCMQ;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id a1si450080ywh.3.2019.10.26.13.29.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 26 Oct 2019 13:29:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YJ37QCMQ;
       spf=pass (google.com: domain of cristianenavescardoso09@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=cristianenavescardoso09@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qt1-x841.google.com with SMTP id c21so8612118qtj.12
        for <outreachy-kernel@googlegroups.com>; Sat, 26 Oct 2019 13:29:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=FGfKeWR+ALU6IXEki/hlm0ra+LCsfescC58IXZqU9BQ=;
        b=YJ37QCMQgHMTqJAun4vVrI47EtM20IcTFGm46ChOUP03jgjfH91x8WmfzWHsJPWBhF
         mkNCdtrMzH7m4xIL4TkvcgLxYL4gGkAmxLHPaGeu1YR/SXesEo4sP/8JqCOo9lmyVf/a
         hJLeNA2XHWiVO1J7P61zR1jjewDbQdGqSemBuScWmbHhJjoQ6lpH4pAkQB1iY/jEClTT
         vY/PBcTi4y0OcCZH7Ew/WrJ1YJcj7GpDNCZFmVMm4KrX4sKk/T3fCdsqF9YYnZczv9I2
         Pzh42uO4oZ+R2IzQ3yo0tjwFXOIcCmczhuFdpr+nGQ0MSIc7SmJ0trDlRevVe0Lk4Vw6
         H1DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=FGfKeWR+ALU6IXEki/hlm0ra+LCsfescC58IXZqU9BQ=;
        b=Q57xBY4iun2lNXzy82ugoSfbbCQkupoRSPxfKNuw9T9hleyT7fFDeaoWYXokDphQb6
         YkES4n0pH6ZCP8g6E4rY5abyMJqPYu6ernYECvmRuDR8fH71G7MOiaw41vn5i9yC20TD
         VQQFrOANQ0sZMnkFHcs9o8aFhUkJq1/wepO6a5e0sANUNWbp2pKgfQBuj0hYseGDBMy1
         aN+oebjCipNZPmKrLIwVA1b9+vl/1MZap+DGiRD6LkzrT8Tm/Trr4o4UHCJPMi4tJlTO
         DW1B5t3JLXHHArbykfBpyn+m8sFo7x307pxi2MkhvquSzX5/77C7gBrMIK3CUu+UhvHu
         LUzw==
X-Gm-Message-State: APjAAAWnORKNl1Oor9uy62oO2T4d4jKxmUEJo71fQlKiqwoDoh0RXubY
	Vl7dUKemzzrTucn/MKHL6n8NB3LSY4PCcA==
X-Received: by 2002:ac8:2dda:: with SMTP id q26mr10316772qta.100.1572121788550;
        Sat, 26 Oct 2019 13:29:48 -0700 (PDT)
Return-Path: <cristianenavescardoso09@gmail.com>
Received: from cristiane-Inspiron-5420 ([131.100.148.220])
        by smtp.gmail.com with ESMTPSA id x7sm3474432qkj.74.2019.10.26.13.29.46
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 26 Oct 2019 13:29:48 -0700 (PDT)
Date: Sat, 26 Oct 2019 17:29:42 -0300
From: Cristiane Naves <cristianenavescardoso09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Larry Finger <Larry.Finger@lwfinger.net>,
	Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/3] staging: rtl8712: Remove unnecessary parentheses.
Message-ID: <2257cfa5359d82207bf17cf652e48cd79c6092ab.1572121059.git.cristianenavescardoso09@gmail.com>
References: <cover.1572121059.git.cristianenavescardoso09@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1572121059.git.cristianenavescardoso09@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Remove unnecessary parentheses. Issue suggested by Joe Perches
<joe@perches.com>.

Signed-off-by: Cristiane Naves <cristianenavescardoso09@gmail.com>
---
 drivers/staging/rtl8712/rtl8712_recv.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
index 12a3c64..c567a16 100644
--- a/drivers/staging/rtl8712/rtl8712_recv.c
+++ b/drivers/staging/rtl8712/rtl8712_recv.c
@@ -61,7 +61,7 @@ void r8712_init_recv_priv(struct recv_priv *precvpriv,
 		precvbuf->ref_cnt = 0;
 		precvbuf->adapter = padapter;
 		list_add_tail(&precvbuf->list,
-			      &(precvpriv->free_recv_buf_queue.queue));
+			      &precvpriv->free_recv_buf_queue.queue);
 		precvbuf++;
 	}
 	precvpriv->free_recv_buf_queue_cnt = NR_RECVBUFF;
-- 
2.7.4


