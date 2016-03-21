X-GM-THRID: 6264514475504697344
X-Received: by 10.140.167.7 with SMTP id n7mr23491184qhn.19.1458571454162;
        Mon, 21 Mar 2016 07:44:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.94.194 with SMTP id g60ls3892518qge.52.gmail; Mon, 21 Mar
 2016 07:44:13 -0700 (PDT)
X-Received: by 10.129.152.16 with SMTP id p16mr22782951ywg.27.1458571453686;
        Mon, 21 Mar 2016 07:44:13 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id sf5si3942330pac.1.2016.03.21.07.44.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Mar 2016 07:44:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id q129so30803513pfb.3
        for <outreachy-kernel@googlegroups.com>; Mon, 21 Mar 2016 07:44:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=cIhE+swMKRJ0PDeWFBGs6MiayRk4DCcge0sqbRZPD7c=;
        b=gXlnmpnuWQnaupFBmn3Qftw6+KDqdEq2jIJIYYEe7Pq/kB8YHzCtuS/wmkEKiD3f+G
         Xg8dajP7i8aWghZLUxkDQgACR+S0TWhvWmYMYwfc58NQTwQNOANoevgMwrLvrMkaccb4
         rgIEoGQQJrThfTSRyRSiRk7YNdNsYLywmNXkRh6zMhz2r2TBOOlekTVJAqsLRhpfxCIP
         fQSBWUu2qImE8vYobq6QRYLut88oIZurbndNnh6+jWxqg18H16Fdo3kQRY/UG36knQOg
         CG7pQkS/SxqRSUkcO0sFpVHB2VH1GDaxG8ua09h+1YRujIMsaRaVlD7AmGHAOuKWp1M9
         aJOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=cIhE+swMKRJ0PDeWFBGs6MiayRk4DCcge0sqbRZPD7c=;
        b=DUVZxlOO+BXuX+SS0hy4cVN4U7X/qIKroRz3C4PDhyRyzymdcDaNMjOgADdBiwI5Qi
         oGUsAaTzGLpLpSCOJhnJVpEbb071tECaOnfXr1D+k7+JfsIbqh796rHnDPPWfEyCv4vY
         XB+02NPDOT/3AIcQcoroMOr1ubMSKBVUh7SahC5nrCGTb47tz8eCGTk/Kh4VepDspelI
         WN1G0XgyNxiO5iGHJV4h23WPgyNXlgfqwwnyWU95bEVj9kDMyVxMdsLFHIqpOSpqUrDK
         SAnJuhBMv7zzj5UYDBoMz1J6e7f+q2eJ5elUy2PePZypOHDRcmiBWS1f3Jl0DuMbN3bn
         WuFA==
X-Gm-Message-State: AD7BkJJ/V0m0o+9RAztVUeYIhkL3XHz14FQItAiONjfK/0bVcDyM1oFuJJwFJJzMQLWCXg==
X-Received: by 10.98.18.195 with SMTP id 64mr45839847pfs.131.1458571453518;
        Mon, 21 Mar 2016 07:44:13 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.219])
        by smtp.gmail.com with ESMTPSA id y7sm35271941pfa.82.2016.03.21.07.44.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 21 Mar 2016 07:44:13 -0700 (PDT)
Date: Mon, 21 Mar 2016 13:15:13 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/4] Staging: iio: ade7758: Use a blank line after
 function/struct declarations.
Message-ID: <3b16b7431b42cdbc8c1d34c0bd4c35ee29d1da6f.1458545206.git.bankarsandhya512@gmail.com>
References: <cover.1458545206.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1458545206.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

Use a blank line after function/struct declarations.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/iio/meter/ade7758.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/staging/iio/meter/ade7758.h b/drivers/staging/iio/meter/ade7758.h
index f6739e2..ff7c764 100644
--- a/drivers/staging/iio/meter/ade7758.h
+++ b/drivers/staging/iio/meter/ade7758.h
@@ -129,6 +129,7 @@ struct ade7758_state {
 	unsigned char		tx_buf[8];
 
 };
+
 #ifdef CONFIG_IIO_BUFFER
 /* At the moment triggers are only used for ring buffer
  * filling. This may change!
@@ -157,6 +158,7 @@ int ade7758_spi_read_reg_8(struct device *dev,
 static inline void ade7758_remove_trigger(struct iio_dev *indio_dev)
 {
 }
+
 static inline int ade7758_probe_trigger(struct iio_dev *indio_dev)
 {
 	return 0;
@@ -166,16 +168,20 @@ static int ade7758_configure_ring(struct iio_dev *indio_dev)
 {
 	return 0;
 }
+
 static inline void ade7758_unconfigure_ring(struct iio_dev *indio_dev)
 {
 }
+
 static inline int ade7758_initialize_ring(struct iio_ring_buffer *ring)
 {
 	return 0;
 }
+
 static inline void ade7758_uninitialize_ring(struct iio_dev *indio_dev)
 {
 }
+
 #endif /* CONFIG_IIO_BUFFER */
 
 #endif
-- 
1.8.3.4


