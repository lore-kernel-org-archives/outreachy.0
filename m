X-GM-THRID: 6670940020392591360
X-Received: by 2002:a0c:c607:: with SMTP id v7mr4790494qvi.188.1553199277266;
        Thu, 21 Mar 2019 13:14:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:6984:: with SMTP id o4ls3122614qtq.9.gmail; Thu, 21 Mar
 2019 13:14:36 -0700 (PDT)
X-Google-Smtp-Source: APXvYqysrg15UZtqskVW2doOWAFMrGy43o07gI0K8LhMaTWfKqKWrnYlqIS/ptfWUYyQZe1MXOCI
X-Received: by 2002:ac8:501:: with SMTP id u1mr4826302qtg.198.1553199276734;
        Thu, 21 Mar 2019 13:14:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553199276; cv=none;
        d=google.com; s=arc-20160816;
        b=EqFvRskGi3XOPxN/4ROVrS6qHakd1AR0z42OIfVLMVMBCYhwoOPE9MzHQGODWrd7AQ
         +sDrmKj0T1wtk4hYZEtYBj69aFYQFVSMU1N3v4X9K+Ta6/yfNtyYokwogzOKvU44t++h
         D/u+ibXmmM6mA3RbI0+dj3yKGrlgqN3SfyT/xuB6YP/tgXFQz1wR9uGvkcq9HvBB2jVd
         slhUdEJbyqYMUzglv4w3z2rpOVFawQNnk/qNDLl29zBEwlaSpHYiOSFOFXxYu4SCzH7V
         r1EKHttTzWdbLoEjHocDguH5E2GPlj4qpKUNPkIsyS8lQo/eb44EJH0F+UX9apWIZ0DQ
         64UA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=fngQRC3TOz4ep2JdwCro5Geqf86eMOXOQEaRPEOHLaQ=;
        b=FzppfciLN/02G5pxl4HEJrB+6MM1flStynxo4hB08OxkCiy5Od6gJYjR5UdVD57V+9
         /r/M8y2NEhLREGtdrxB2/j9x7rw8uD1Su+Elc2H/rkCldELDJjSpDmYLgMcHUJtWgkCY
         EcvkKkl1oVCznKqb9IYZLt2I8YsL6CzANMV7vs6EwarrznLgXDkkK8WA3iiMu5yZnaAL
         fYSU6iMhn0VlV38NMbCKszzndGMFEquhvMWFZ7ZYieu36dTslwFZ/oIrD/6JyatHY+ss
         7BaC5ikximtYxaStHNjdL98D5EJNUV+ISDcf+bxaCbLZm99z1v4jOMhkjwoNHtZJNGIz
         tfag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=WZsAmbvn;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.38 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
Return-Path: <nishka.dasgupta@yahoo.com>
Received: from sonic311-21.consmr.mail.sg3.yahoo.com (sonic311-21.consmr.mail.sg3.yahoo.com. [106.10.244.38])
        by gmr-mx.google.com with ESMTPS id u65si413619qkc.5.2019.03.21.13.14.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 13:14:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.38 as permitted sender) client-ip=106.10.244.38;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@yahoo.com header.s=s2048 header.b=WZsAmbvn;
       spf=pass (google.com: domain of nishka.dasgupta@yahoo.com designates 106.10.244.38 as permitted sender) smtp.mailfrom=nishka.dasgupta@yahoo.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=yahoo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048; t=1553199273; bh=fngQRC3TOz4ep2JdwCro5Geqf86eMOXOQEaRPEOHLaQ=; h=From:To:Cc:Subject:Date:In-Reply-To:References:From:Subject; b=WZsAmbvnIXRT7fu/cdRU3Bua1Fd9d9X+hkw8GdT/AZRibdzfX7HEALDRS3KEe9b0KNf/A6TETCej9y1RKQdFIdf7xpmd8P8I9g9n9crp9InP+BET3hwXBojF518n7Qbr0t6OaRd71r6hMcTi9SugW3WcoaIhnauv8SkrqqAlYP9wK3u4G/+hQ0/0EjbQb1WJOWpYLd0+5aqoDDrVCuCVhtciD+1l/9XwXwdFxJq62VF02cQqorriWs6/ii/uQI/n3z3t64riwNG3X0/e7rOf8BuUiz9pmrNQl6U62zjdvRHA8KXG055hHV6d52OSIUenKo3ch/zkhNwnZzvTO9QHYg==
X-YMail-OSG: eHOv6dwVM1kJsYF9x2u8uvjKrCrFo0qyZnOX9f6f3952QRYLDEK7hcf3djHhPTp
 C3MnSMc.useVKxCgMtHetOUNB37JTg0Wt64fFIWP0bb9JRmAdVTeuVahe2eARh6n73NaotQkIno2
 nczBBBHno1pBTggLmasM0O0DlFu4cZAVigK.J7KoEqbYHBU6tj5s8H_tLQy_J6qYgZcRkeD3F7RI
 UoZa0YnKF5_jdurbc6Qvf0.zXWVrXVw8FTSUhEZqqAeUGVZ3O.GlFUsk4Awj7as7THCqTSLN7tqp
 44W1vIErUD9DeVgYDYM9zxyVPAY4FVdSDujfN48kmPpardzMs5EO42DB6hU88NXbS1tGTKXUcDKP
 za9zDkIA4A_s04RNl9rrTK9gf2pS4U9DRq85K2ChOXUKWyGqbjIGRUxEWlGIsqUZMmFovnOIbcOy
 7Mzrcz_t1JJuJdWFUn335TJuyip7jOw6xxUaEDY88YUAIfpxI8QX3kYzCdOno7mlIccSd01em5iq
 XfFgxGy8Sxm8ymyxpIJmq6kI6wwNdm5xft_Ey2AuLoYK0g_D4MlaI5bZLgetWsh62sN.OdNkktAz
 E1GIyUukdqu_hd9mxMofp5F.xeU3tH2LTjyepot7OkReRU8dIHpVkvpeYkuEVY0izvVhoEb_CXKq
 jSMIZcbK9Rvr9J.wgkXkOHFwMB.e2j2RmIwdgrFHgbrazkmnEo8w4KVdDSa3Wl4cKlglkM48gHlX
 G4wKvqgAcDEdy_6os.AdutZCAY5beE2VbACi2xq.ds5xR8kzAPZfRUuqgpe6YO9VvRG_AVMnfqio
 EBq_HtDnM79uZ6_nDgj0qyDAgzADrj0hTKa1vZoCvsKIEo7JLfRkbzFCsfurq77T5GTns7J3n_b5
 uGD4V3dMvSdiI9BAYupPXvQJ_byQYjdzHLqIiOtiGuPj81WVSvo26EcvMaqf8NpesbIMFRzxwO1F
 KHDml5Y.Vq2iQiT6FjjT9_.ZbH7h4JwK2.Y3hxKZNO23vNgIkKbAkHYYlL_PVGaDMVwQWdGBMn_c
 VMbGI9ywmaW4Z41g7qAmf7MbqVQlhtImi0nPhG58.C8SVKLSwXazDq0TrNUWQS1GdsWrP3OmoVnC
 Y0mpianpcRRfrLzdwopSdabu_6mrCfFOGyIQ-
Received: from sonic.gate.mail.ne1.yahoo.com by sonic311.consmr.mail.sg3.yahoo.com with HTTP; Thu, 21 Mar 2019 20:14:33 +0000
Received: from 103.7.128.210 (EHLO localhost.localdomain) ([103.7.128.210])
          by smtp408.mail.sg3.yahoo.com (Oath Hermes SMTP Server) with ESMTPA ID f52b3467335251bdb2b643b08dda1312;
          Thu, 21 Mar 2019 20:14:33 +0000 (UTC)
From: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Subject: [PATCH 4/4] staging: rtl8723bs: core: Remove return variables in rtw_io.c
Date: Fri, 22 Mar 2019 01:43:59 +0530
Message-Id: <20190321201359.5948-7-nishka.dasgupta@yahoo.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190321201359.5948-1-nishka.dasgupta@yahoo.com>
References: <20190321201359.5948-1-nishka.dasgupta@yahoo.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Remove unnecessary return variables in rtw_io.c. Issue found with
Coccinelle using ret.cocci.

Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
---
 drivers/staging/rtl8723bs/core/rtw_io.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_io.c b/drivers/staging/rtl8723bs/core/rtw_io.c
index d341069097e2..60347349efd1 100644
--- a/drivers/staging/rtl8723bs/core/rtw_io.c
+++ b/drivers/staging/rtl8723bs/core/rtw_io.c
@@ -37,7 +37,6 @@ jackson@realtek.com.tw
 
 u8 _rtw_read8(struct adapter *adapter, u32 addr)
 {
-	u8 r_val;
 	/* struct	io_queue	*pio_queue = (struct io_queue *)adapter->pio_queue; */
 	struct io_priv *pio_priv = &adapter->iopriv;
 	struct	intf_hdl		*pintfhdl = &(pio_priv->intf);
@@ -45,8 +44,7 @@ u8 _rtw_read8(struct adapter *adapter, u32 addr)
 
 	_read8 = pintfhdl->io_ops._read8;
 
-	r_val = _read8(pintfhdl, addr);
-	return r_val;
+	return  _read8(pintfhdl, addr);
 }
 
 u16 _rtw_read16(struct adapter *adapter, u32 addr)
@@ -142,13 +140,10 @@ u32 _rtw_write_port(struct adapter *adapter, u32 addr, u32 cnt, u8 *pmem)
 	u32 (*_write_port)(struct intf_hdl *pintfhdl, u32 addr, u32 cnt, u8 *pmem);
 	struct io_priv *pio_priv = &adapter->iopriv;
 	struct	intf_hdl		*pintfhdl = &(pio_priv->intf);
-	u32 ret = _SUCCESS;
 
 	_write_port = pintfhdl->io_ops._write_port;
 
-	ret = _write_port(pintfhdl, addr, cnt, pmem);
-
-	return ret;
+	return _write_port(pintfhdl, addr, cnt, pmem);
 }
 
 int rtw_init_io_priv(struct adapter *padapter, void (*set_intf_ops)(struct adapter *padapter, struct _io_ops *pops))
-- 
2.19.1


