X-GM-THRID: 6474892395413504000
X-Received: by 10.84.234.204 with SMTP id i12mr136392plt.8.1507567883252;
        Mon, 09 Oct 2017 09:51:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.84.179.36 with SMTP id a33ls1540682plc.10.gmail; Mon, 09 Oct
 2017 09:51:22 -0700 (PDT)
X-Received: by 10.99.147.77 with SMTP id w13mr550133pgm.45.1507567882318;
        Mon, 09 Oct 2017 09:51:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507567882; cv=none;
        d=google.com; s=arc-20160816;
        b=flZR2/DutkftKG8IsfzjGgaFpnMzpEn/PmjYd7QjEOWRaJ6D66jR/QQNH89cFusMAz
         /ezqfaH9UhHQNwvYnPetOvCjtk328T2P0frJC3kJdZPuYw93oQVXE6SQSZm/8k+Z2+/U
         NWD5IZRZ2pF75fmrLpunjfwBZqAMsYxLft6TaRjDjZHFs8ykB2avtzyKbK3EbfwnA8vA
         csVojusgb0DwJNZ4TnMyOYN/Gdni9iMK5wqE1KmR+q9NRTGW5Sc7/TOFSLljJDTG+xfz
         DUdeIHpZykJkTcOPhIF1Koxmz2mJe71qcnFl46OboqmN5OaKCoTfLw5+sVzCMSIAIam5
         XFhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=hjZaomXAdv6kjDLv41LzzvJNNKdVHs2dp2TfTEOkgZI=;
        b=HmmIU+W3VB+LHDYgatB7EbUIJ6SyO6xv5bSioLQQEKXJrVt5eQS1Rj5rR1BSlYti8Q
         WzqfrRq/mQDzsqquyU7R6kBTN7XbHL2x8ssb8/k7gPFjXW+s1GLg9qeCncigPo7nHjsa
         QbCOUCyPqUEGXUI75RIBCLCIU2FzD7pbb8p7bfUCKP2xW1GzXCutNV1XIu5viKJQ3g54
         6unL80cgouwpiTflELf34vDjiq8lqSuNuNeGqYbxlmoxp3ckIF9u3Iyi4TQWhL6Ba0TA
         jJkljq7cVt1xpgrLhlWdZShXxeBF/9w5AW8xf3ZglAi+urjvrnZUS0m4LkBQFE2E6a5H
         gfug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YwBh5eJu;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id w65si863269pfa.21.2017.10.09.09.51.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Oct 2017 09:51:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YwBh5eJu;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id z11so11620404pfk.3
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Oct 2017 09:51:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=hjZaomXAdv6kjDLv41LzzvJNNKdVHs2dp2TfTEOkgZI=;
        b=YwBh5eJul39x9SCYGsErU2cYG5+4lUZ6To5PVfwSP/qcYUUFeMZ/F82pKCrdWsSzzx
         P0XbfA5WXtLyXfcZN2yppOva0ZdQAcwSnZnU3BY65lyfy8U7yt1KaZWnAleWaN6sBWll
         hG7E5hZXmh2njmABBUuL2Bcc45rXcvHCO1/mmhj1djoqILqVB44KUahDiL2N/YDXFDsj
         57hNe8KqgjjlP86lbQfwMGVZwi7+3LrsDnYR6kuy0jSHWb31VhIOgQXpONGQ73C20ug/
         Xj3k/8pDRzRJRf2KoWPbNA04x5sD1TeGE4LCOhClk6zuZmcqsIgmZW+TWB8RhDGOvqi+
         mCMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=hjZaomXAdv6kjDLv41LzzvJNNKdVHs2dp2TfTEOkgZI=;
        b=XxYkU5U4XYlOAYL/uQqJ0I2cJuVSEaVfYvtjwD5WRBgPJjpENxgQxujWnkZo13WcYF
         9IqGxbIFj+LBgpZSgoKgmqlYAoE53GLo9q78HJSp55uwoxMoN/cg3+RXuJozTdM2BQSh
         KzXH+MderoNdiqCILn9VJxSrIw3klwDG2uR+tOd1AO6rBnt8P+4D8QKVtlGgKoruWVja
         PafB+/AJbZxOe+lesu7dHYkrTH9j1KP/w20wAOx7p1DeSkoJiChTDKAMC0Y4cBhGpVhN
         lU6k7XnOIdCAkeNgVXtAp/UAsZ7LDaRbWC4+7mytdwm/4PZfs352cRaQmkGXWVD5T2uo
         XUDw==
X-Gm-Message-State: AMCzsaU8of37A55gOy9Knc6gtid6exjrUo34tnPZmE1xBdhMK+I0+7WH
	6eXlQrYJEiKlwlkB3G4kMSM=
X-Google-Smtp-Source: AOwi7QADkyNNPpxfwkidlDwkabgngQr1IWrKVz1mFEKQylzpF4v4yB3MN1A1CBT8vMCSzQ9+BUYmqQ==
X-Received: by 10.101.69.8 with SMTP id n8mr2052280pgq.79.1507567881980;
        Mon, 09 Oct 2017 09:51:21 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([122.179.25.150])
        by smtp.gmail.com with ESMTPSA id c16sm18179392pfj.123.2017.10.09.09.51.20
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 09 Oct 2017 09:51:21 -0700 (PDT)
Date: Mon, 9 Oct 2017 22:21:17 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: rtl8723bs: remove implicit int->bool conversions
Message-ID: <20171009165117.noqxfqjmmpfej6to@aishwarya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)

Implicit type conversions are bad; they hinder readability of code and
have potential to cause bugs. Here the variable wait_ack is always
supplied a bool value while in function declarations it is defined as an
int type. Fix it by defining wait_ack a bool type in all usages.

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
Acked-by: Julia Lawall <julia.lawall@lip6.fr>
---
Changes in v2:
-Wrap commit message in 72 characters

drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
index 355ce9b19d1c..0dca5cdef2e7 100644
--- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
@@ -2831,7 +2831,9 @@ void issue_probersp(struct adapter *padapter, unsigned char *da, u8 is_valid_p2p
 
 }
 
-static int _issue_probereq(struct adapter *padapter, struct ndis_802_11_ssid *pssid, u8 *da, u8 ch, bool append_wps, int wait_ack)
+static int _issue_probereq(struct adapter *padapter,
+			   struct ndis_802_11_ssid *pssid,
+			   u8 *da, u8 ch, bool append_wps, bool wait_ack)
 {
 	int ret = _FAIL;
 	struct xmit_frame		*pmgntframe;
@@ -3430,7 +3432,8 @@ void issue_assocreq(struct adapter *padapter)
 }
 
 /* when wait_ack is ture, this function shoule be called at process context */
-static int _issue_nulldata(struct adapter *padapter, unsigned char *da, unsigned int power_mode, int wait_ack)
+static int _issue_nulldata(struct adapter *padapter, unsigned char *da,
+			   unsigned int power_mode, bool wait_ack)
 {
 	int ret = _FAIL;
 	struct xmit_frame			*pmgntframe;
@@ -3591,7 +3594,8 @@ s32 issue_nulldata_in_interrupt(struct adapter *padapter, u8 *da)
 }
 
 /* when wait_ack is ture, this function shoule be called at process context */
-static int _issue_qos_nulldata(struct adapter *padapter, unsigned char *da, u16 tid, int wait_ack)
+static int _issue_qos_nulldata(struct adapter *padapter, unsigned char *da,
+			       u16 tid, bool wait_ack)
 {
 	int ret = _FAIL;
 	struct xmit_frame			*pmgntframe;
@@ -3715,7 +3719,8 @@ int issue_qos_nulldata(struct adapter *padapter, unsigned char *da, u16 tid, int
 	return ret;
 }
 
-static int _issue_deauth(struct adapter *padapter, unsigned char *da, unsigned short reason, u8 wait_ack)
+static int _issue_deauth(struct adapter *padapter, unsigned char *da,
+			 unsigned short reason, bool wait_ack)
 {
 	struct xmit_frame			*pmgntframe;
 	struct pkt_attrib			*pattrib;
-- 
2.11.0


