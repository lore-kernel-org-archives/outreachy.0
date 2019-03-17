X-GM-THRID: 6668974051336126464
X-Received: by 2002:aca:cf05:: with SMTP id f5mr6739436oig.46.1552782762978;
        Sat, 16 Mar 2019 17:32:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:590f:: with SMTP id t15ls1647307oth.10.gmail; Sat, 16
 Mar 2019 17:32:42 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxZVV6UU/XnyT+PTGHqUSbwGY63zHyDeIkhbXh5jPs74wz5A00IEu8bPhBWGiZCaMPdDijz
X-Received: by 2002:a05:6830:1254:: with SMTP id s20mr5826301otp.41.1552782762170;
        Sat, 16 Mar 2019 17:32:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552782762; cv=none;
        d=google.com; s=arc-20160816;
        b=IxN1tKqRkWidSSAZd3l6f035/3/EJU5a9OXi+XEoAin/Vuzv1KU/d0kqpWqUMHV4RC
         W7q9l5fEokNVkFHOd3OgIic4k6ZrVr9zYhaZMnCJ/03bCMqkkiye2LmGr/1hIw4I0fLq
         nyekkaXyiNIGWa/HkdXskC28JVUqcO06JZC/+dMaTIUe+nm7kTmSNG06gOmdLl/Ocn7k
         LSYSmN/Tu6Qz1upgEmQZDX3QX7RPO6NrJ09JmHjj7ZXvQYbEX04kY7FT2fB+80rveV2L
         +IkjSOspT5K5i70ydu7scVJzl3FOcEyQ0nk3prH2braGfJlNg34zbWBtkDg8HnGynJZb
         /Ztw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=z414k8SQ3E38kZTxhL6L+K2exADPxiCvUXz0X+6WmWs=;
        b=SSV39fjknKNijqiOmuIVXF49BQZec7zoMuzA8+E+yv8xXR7AWg02Gf+yqL2RYilPvJ
         XFMpfoujwB/A+98VLZeOx+ThOiU+80HSbcmEwvmO7y0JW82YdvApj8mAUJEgD1SC7Gfz
         xIj5xmjK9wFve51NDFiP37ZKxXJlEk2CF/sS+jDrWdRW1y4RYDwCNgCK6tP79mGGR/Up
         Tk2TQGDxp3qHBaRC+z32ad4brhxDsC6kS0xb/WRMZgI8tUfzjEeigQZzNNSvmwnC+zW4
         HIApCM/FqgQlDnWApMThQEKlUgT9zK2Aj12x6cZex3uW6Y4aMyo1Cmfh0O8SG0B59OPr
         tN4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=maDsm1Ft;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id u185si199584oib.2.2019.03.16.17.32.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 17:32:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=maDsm1Ft;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x342.google.com with SMTP id t7so11527035otk.8
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Mar 2019 17:32:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=z414k8SQ3E38kZTxhL6L+K2exADPxiCvUXz0X+6WmWs=;
        b=maDsm1FtSMrslNScjf25p+Au9uevtaDgt9WPJMjb44G9vr6O1BbfoZ8JdFprc9vKYI
         KbH3H8W1JUfNhmG/SM/9TKMVz8tqXXivpkYYzbqtzk7qo4yXDZKFWysVu10SrnXn4pXR
         Tn6EGYA9zx2XwVBczIXuKKqlTQ18BwuA+4NJsmoiIJ5D87YHnoIV2SXMgaxK4OJmnwSX
         iP4KiDY17u6I/osCxQRcIIkAoVpaWLaduJMJwX9TYLe7QXQK9SjuIatHmowE01B2w/4T
         uEFYfRqITsNRfJO9GX46WkhQ/UfUkaz1cJ/dYoXZYgR806bJ+2vCA5A/URZWRxMQBgra
         lreQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=z414k8SQ3E38kZTxhL6L+K2exADPxiCvUXz0X+6WmWs=;
        b=gab38om0ZwaSmjVYmETsT1OmAl/YbY/7qbN2r5KCJ9Hl1u7FuLDmj1Fl2ZAgDvMFM0
         eZUR8uFhcOGU0HMf/fd08dtsOMMiOzBqrwpTeE3j4T/MVILg7LYRg10CKGO1Rc3nKpiM
         Ztgrr67VhtGgKK3F47R06Xjy39+yuEWqvsYkyD1xysWhfaQVGiskAdn1Rtbe8HjKhSib
         MfnzPPuhHgyuCHSM7vwl8jPnIQfZkXOOfV2tZqfBFPvVWbbXsPT5truKII+8bPVUPXu8
         cD5c0BUh30omnch6qvLzt5uRYTcvgDVbx7NYblyILT1eFK075F4KvYp0fFur3gkHf9yl
         0HjQ==
X-Gm-Message-State: APjAAAVzIvH+igVh1+TFgfQsSTYu7tdAcNUAZ3e247M3U/pDfbEk3wMk
	WPuJOhKtJ4YFT1tLRT+KEVnPk/BP
X-Received: by 2002:a9d:65c1:: with SMTP id z1mr6786946oth.277.1552782761913;
        Sat, 16 Mar 2019 17:32:41 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:606d:d12b:f32e:ef21:5bfb])
        by smtp.gmail.com with ESMTPSA id s12sm2315685otk.0.2019.03.16.17.32.40
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 16 Mar 2019 17:32:41 -0700 (PDT)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH 5/7] Staging: rtl8723bs: Replace error codes with values
Date: Sat, 16 Mar 2019 19:32:22 -0500
Message-Id: <5e5f5a18cd37b5edb56196cbe8ec6d2ce5819493.1552782299.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1552782299.git.madhumithabiw@gmail.com>
References: <cover.1552782299.git.madhumithabiw@gmail.com>
In-Reply-To: <cover.1552782299.git.madhumithabiw@gmail.com>
References: <cover.1552782299.git.madhumithabiw@gmail.com>

Replace error codes with values in order to match return types of called
functions rtw_init_cmd_priv and rtw_init_evt_priv.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/rtl8723bs/os_dep/os_intfs.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723bs/os_dep/os_intfs.c b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
index 143e3f9b31aa..6b3def0397f0 100644
--- a/drivers/staging/rtl8723bs/os_dep/os_intfs.c
+++ b/drivers/staging/rtl8723bs/os_dep/os_intfs.c
@@ -757,7 +757,7 @@ u8 rtw_init_drv_sw(struct adapter *padapter)
 
 	rtw_init_hal_com_default_value(padapter);
 
-	if ((rtw_init_cmd_priv(&padapter->cmdpriv)) == _FAIL) {
+	if ((rtw_init_cmd_priv(&padapter->cmdpriv)) == -ENOMEM) {
 		RT_TRACE(_module_os_intfs_c_, _drv_err_, ("\n Can't init cmd_priv\n"));
 		ret8 = _FAIL;
 		goto exit;
@@ -765,7 +765,7 @@ u8 rtw_init_drv_sw(struct adapter *padapter)
 
 	padapter->cmdpriv.padapter = padapter;
 
-	if ((rtw_init_evt_priv(&padapter->evtpriv)) == _FAIL) {
+	if ((rtw_init_evt_priv(&padapter->evtpriv)) == -ENOMEM) {
 		RT_TRACE(_module_os_intfs_c_, _drv_err_, ("\n Can't init evt_priv\n"));
 		ret8 = _FAIL;
 		goto exit;
-- 
2.17.1


