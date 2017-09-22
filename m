X-GM-THRID: 6468559183298953216
X-Received: by 10.99.168.8 with SMTP id o8mr5378643pgf.135.1506078848896;
        Fri, 22 Sep 2017 04:14:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.49.194 with SMTP id x185ls1442582pgx.23.gmail; Fri, 22 Sep
 2017 04:14:07 -0700 (PDT)
X-Received: by 10.99.179.66 with SMTP id x2mr5208785pgt.129.1506078847986;
        Fri, 22 Sep 2017 04:14:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506078847; cv=none;
        d=google.com; s=arc-20160816;
        b=g23lMJybuFM8AZdfY/tXZ5tPpsxxpkCuPxpFWbJrD4zGlW2fu1Jm3tU7zpEyvl4InO
         iEoSJYIZ/rmxn8vBlinrwqubolZo1LAjzfo0tTJfyOni0fvgZ5c/s9nhvPFltCzsRdFh
         EwRytmMk66/qstW7+PyESTLTEkJQlnD6qNqNWOHHxPyJD2kmAXlRbGodByWNNyZ/mVxt
         FJBHHQJlkGvm/VBvWR1dFtJcWpJePC2WQL3mQWkQPKBwLdWhxdRBHHj7639Cr31yRK5z
         UoyjW+WB2hzsPZjKTLI+ESLcyxjypWs+syxOkGhzKgGmbhGzkx6jBssg/j65tWzLGa4Z
         v8hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=omtYU/xkK0AzEaDxucyKpLhMYZ531cQ9wJP8zD9fwvg=;
        b=HTULmFh0PGW+om3Pvx03aVKHvc8NbJ3P99UsC2wXIFCN7JXOHBlF9Tk1OCFjJNHJii
         oOMZp88aXKH/0SYpqNy3DWAUmxU53VGN7S9umLmk6hI6GilHAGGn3p7XfAkZ0SJiwBCl
         Gk51Lg7tVWwhRXAmiySmO6naUbATxsVQCnMpbyObvPHKt2ZpyuzgZHFWwSK18h+3QJya
         x6W9ufl6TLRHSAqOayIpzx7hSVrLbhR7my4U+TOl9oQZQ9d8J8xZvje7zUqpVcS3oQ0N
         tSwHOMWlCX1cBwtel3IOqUoOkKAak+PDz4xyL5B0963II5QyCHf5py4AsqQxSKuzcvtm
         D0aA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=r8SmStNL;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id w11si349801pfk.4.2017.09.22.04.14.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Sep 2017 04:14:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=r8SmStNL;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id j16so459478pga.2
        for <outreachy-kernel@googlegroups.com>; Fri, 22 Sep 2017 04:14:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=omtYU/xkK0AzEaDxucyKpLhMYZ531cQ9wJP8zD9fwvg=;
        b=r8SmStNLAGLGEoByEQlpaQf5sZh6QQcfaCXCM3Nrw7uc22g5NWCRswHcdcwCovlpC6
         wI48NnNjSCr3+6uOs2p/BKizEM5w0BAlm/OhMUHSbRb7r7edI2V/kiLe2cFb+a+iD6+P
         Z1tKTpm/d7p1o20uc93Cu5iUWlkfKeNtV44aQS06pHbEcVpjmaf2aHiQCN/oHBdmOqP1
         Hf7mEjkyRbqSfhq+5JJxmG/NI993aHnec2CZvRVBwYcNovMaGKJcYB8FsZ+AGBvcRXiW
         smsWOV3g2AImYTtGzv/oJwDkH3Ibu/2kU+C7j7PA9UnioDC9BRE7wvpz4hMpyrYvzct1
         SQUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=omtYU/xkK0AzEaDxucyKpLhMYZ531cQ9wJP8zD9fwvg=;
        b=FLR4cLA1ahNh/GFyNFRmfY79bC0ji3g/KyAO3+ztNwpXAgnS8ViukrjioeOL1FgsTg
         LJz22BUA1d7MAb3qQiQKVJVMvILcrlypM3l/vqh1R1axYT04sEy/dBbuvwFM9AaYo5yr
         krVYJQ+4AcutHuPMl6W34CrBGxAmMyXxTFQRxFcFPVm4Eq1nrH4LGRlleGSz/vBDv97D
         MO8OVNUujebnZhP+8l4JrmkR6OIGAx574CURnxyOKaccGL6+TMl6Tsnyel0rTQdrqHfq
         h9N1Nq+OYDoahnFkRk+ZXwQHv3yJSQ3VweisE3VHY1gAz7/wj21E6y6EeYSQ2eR72x31
         AyAw==
X-Gm-Message-State: AHPjjUgoPn/vfxAEyWrrXiRsgDN8WvcVnY6TD0NHWqAQvHFYgNGk+9Uu
	nR2BJIB9ubsys3P2i4YrbYA=
X-Google-Smtp-Source: AOwi7QCMXpGCBYF4QicW3SZzXnH/BIMZhsqi+xc+lVVgtQ3sJpMVwWtzORCu2IvXmqz4Sxe61MB/fw==
X-Received: by 10.98.69.136 with SMTP id n8mr9023461pfi.291.1506078847710;
        Fri, 22 Sep 2017 04:14:07 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([121.244.155.15])
        by smtp.gmail.com with ESMTPSA id m10sm6324679pgs.77.2017.09.22.04.14.06
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Sep 2017 04:14:07 -0700 (PDT)
Date: Fri, 22 Sep 2017 16:44:03 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/3] staging: rtl8188eu: remove implicit bool->int conversions
Message-ID: <20110c89164950c60e4481deadced8e02b3bfa9e.1506078496.git.aishpant@gmail.com>
References: <cover.1506078496.git.aishpant@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1506078496.git.aishpant@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Implicit type conversions are bad; they hinder readability of code and have
potential to cause bugs. Here the variable wait_ack is always supplied a bool
value while in function declarations it is defined as an int type. Fix it by
defining wait_ack a bool type in all usages.

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
index 2db2ca6..99f3d5c 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
@@ -1196,7 +1196,7 @@ static void issue_assocreq(struct adapter *padapter)
 }
 
 /* when wait_ack is true, this function should be called at process context */
-static int _issue_nulldata(struct adapter *padapter, unsigned char *da, unsigned int power_mode, int wait_ack)
+static int _issue_nulldata(struct adapter *padapter, unsigned char *da, unsigned int power_mode, bool wait_ack)
 {
 	int ret = _FAIL;
 	struct xmit_frame			*pmgntframe;
@@ -1316,7 +1316,7 @@ int issue_nulldata(struct adapter *padapter, unsigned char *da, unsigned int pow
 }
 
 /* when wait_ack is true, this function should be called at process context */
-static int _issue_qos_nulldata(struct adapter *padapter, unsigned char *da, u16 tid, int wait_ack)
+static int _issue_qos_nulldata(struct adapter *padapter, unsigned char *da, u16 tid, bool wait_ack)
 {
 	int ret = _FAIL;
 	struct xmit_frame			*pmgntframe;
@@ -1442,7 +1442,7 @@ int issue_qos_nulldata(struct adapter *padapter, unsigned char *da, u16 tid, int
 	return ret;
 }
 
-static int _issue_deauth(struct adapter *padapter, unsigned char *da, unsigned short reason, u8 wait_ack)
+static int _issue_deauth(struct adapter *padapter, unsigned char *da, unsigned short reason, bool wait_ack)
 {
 	struct xmit_frame			*pmgntframe;
 	struct pkt_attrib			*pattrib;
-- 
2.7.4


