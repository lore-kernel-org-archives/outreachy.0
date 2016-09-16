X-GM-THRID: 6330756111319171072
X-Received: by 10.157.35.244 with SMTP id t107mr8695285otb.2.1473994029188;
        Thu, 15 Sep 2016 19:47:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.39.6 with SMTP id n6ls1483397ion.17.gmail; Thu, 15 Sep
 2016 19:47:08 -0700 (PDT)
X-Received: by 10.36.33.200 with SMTP id e191mr4788637ita.12.1473994028926;
        Thu, 15 Sep 2016 19:47:08 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id 125si487509itw.2.2016.09.15.19.47.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 19:47:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id pp5so2847789pac.2
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 19:47:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=BF/vKcwPbGeKznXWnVp7jD2WVxXOJ47nP3AZq+Iwpus=;
        b=FuzDVUOyNQtnSIBuY3UYG0gOujAgoxMs1EiSW5Wxyr3cIo1/lRbLVrjUKzhebvJUY0
         LoAJGxnCrqGciOtV7gQYeKjYp3J36kbb2R/w882YNbV275VMjNf09AbTNQ6tx7wmV4hc
         aIa73NM+8W5SMrk58WM51Q1iMko+VM6x26UkLi4mHo2p8i/NjN5Da7er8rTioX/rnPHA
         s2kPhduuSW72VJW8FTl9JrLwKybJK684Xd7j/2cvwBHixq4xyM/GVQL6scqg8++ziATY
         QlqWUZPJLGUE0BmMneQdlTrF65smQCdJ17bhy8waiGZIK7IVzMMl/NDnyoWPbpgQTvwu
         +o8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=BF/vKcwPbGeKznXWnVp7jD2WVxXOJ47nP3AZq+Iwpus=;
        b=MqN/QlVGB2/QcFsIV4caYDV9J5uUKkdT+I2CqdBfFWoFDKqpi4lt1HCsfn0v1pvpT4
         1vbImymc7dit7njEx4H3+96F4BqtRM6NJdiyEa7AUWTPXYdKxj9+MaXFFxUa8zRVZVYs
         m4+O8Jybghg33GTgKQrtuIEFRXQVE5dT6LreFT5ZYTkeuoYEmrP0p2zv388ExDqyLZPR
         I76vwxIKHgFpi2Q8Bez7jDme95QIPsm5yuMPzEHSIPdSsaj1bQS/fq41/kaGU+xnes9P
         RfXqsS+p8BfoqQoxPd1GoNRhfDa7Ysbq7j7CYx0AzZox2/j2TnIXp9XMc0aL6YoCQ2wj
         BYkg==
X-Gm-Message-State: AE9vXwMO8e1v5I+0bQNq8WaIPjlz0bel9vpYcyAiHiNe4qivikzl8Pjpek8j+7JdGCnEgA==
X-Received: by 10.66.2.168 with SMTP id 8mr19672945pav.87.1473994028703;
        Thu, 15 Sep 2016 19:47:08 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id h67sm19190807pfg.32.2016.09.15.19.47.06
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 15 Sep 2016 19:47:08 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH 4/8] staging: wlan-ng: add spaces around |
Date: Fri, 16 Sep 2016 08:16:06 +0530
Message-Id: <bbeab8b2513b978772c26ba17fc557cd91b497d8.1473993585.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.9.2
In-Reply-To: <cover.1473993585.git.gs051095@gmail.com>
References: <cover.1473993585.git.gs051095@gmail.com>
In-Reply-To: <cover.1473993585.git.gs051095@gmail.com>
References: <cover.1473993585.git.gs051095@gmail.com>

add spaces around | to fix the checkpatch issue, spaces preferred around
that '|'.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/wlan-ng/hfa384x.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/wlan-ng/hfa384x.h b/drivers/staging/wlan-ng/hfa384x.h
index d4b1dbf..4bbbce5 100644
--- a/drivers/staging/wlan-ng/hfa384x.h
+++ b/drivers/staging/wlan-ng/hfa384x.h
@@ -504,8 +504,8 @@ Communication Frames: Test/Get/Set Field Values for Transmit Frames
 /*-- Status Field --*/
 #define HFA384x_TXSTATUS_ISERROR(v)	\
 	(((u16)(v)) & \
-	(HFA384x_TXSTATUS_ACKERR|HFA384x_TXSTATUS_FORMERR|\
-	HFA384x_TXSTATUS_DISCON|HFA384x_TXSTATUS_AGEDERR|\
+	(HFA384x_TXSTATUS_ACKERR | HFA384x_TXSTATUS_FORMERR | \
+	HFA384x_TXSTATUS_DISCON | HFA384x_TXSTATUS_AGEDERR | \
 	HFA384x_TXSTATUS_RETRYERR))
 
 #define	HFA384x_TX_SET(v, m, s)		((((u16)(v))<<((u16)(s))) & ((u16)(m)))
-- 
2.9.2


