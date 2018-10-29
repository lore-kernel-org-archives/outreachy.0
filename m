X-GM-THRID: 6617910833765679104
X-Received: by 2002:a63:de11:: with SMTP id f17-v6mr113725pgg.115.1540853632000;
        Mon, 29 Oct 2018 15:53:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:688a:: with SMTP id d132-v6ls2856854pgc.19.gmail; Mon,
 29 Oct 2018 15:53:51 -0700 (PDT)
X-Google-Smtp-Source: AJdET5fSy5chpPIu/pWIWQxWiM8Yqk1rk012UoKhvQQVVHsXgtxnR/g4YLeTFdLh4ADy/q61GO6c
X-Received: by 2002:a62:ea07:: with SMTP id t7-v6mr103549pfh.44.1540853631325;
        Mon, 29 Oct 2018 15:53:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540853631; cv=none;
        d=google.com; s=arc-20160816;
        b=nrgS7VyI+CW8A2+gwH25wYKIMRnyFnTEpg5gh21gzNbhR9RWHY+C4O0pVJbLNV5sN6
         eu32BCf+JQXuEKO/PCcWsCyc061Sj4rnj+JMtonufnyVneRBnMIjP60mkZjINS88jJ/e
         QuuQxz5SWatj22w7KUjQFkVhSv+x6CO0bPlssKxR/5l8PFPSn6RqYiP46eY/0Q3gnjhS
         0/FuKDCYIWaFKnfVf3qJKqn8CZ71ehz5sJOegbqMa9D3giEnEawQSmjz+w5Hkhh/xVcI
         WWUE0c641vdjE+OL91S+U22GHWSnSXp7pHwPIdPwm60VK40ItP8fJVCwDlFg6lUBAWb3
         Ztxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=/wcJkANj6QOF6deDNqvy0qrvIU4zIxLUADb8f013PBQ=;
        b=R5dVskZePaSMzyaN4OF40gXfUqGUCoF3eHMGU5MBPHo0ifAgZWVsV1JeOAeRY/vKnR
         V2b/45A/KT1zhFgyer7E/mVcL/5507tYCrGyhEtsxi/P4LRf9SykTpuc6R6+AMm3m+MF
         ZN/kbMtA6mQgS7cuD3uxJ9+5Ol23Q3TRT0YxEdl0rThVy99LKCyTkL144HAwpKCRbzYm
         fmOUt7UaIkvPBvxeVIPQvNoihklH8MWBN0iezasiXSzKDO71F+zTpx42t6EeTnvfdT7N
         0nFgDJ9X4x4buOEtyGfK3gyNoMqdFyHzTUWVkklEPPuGY3DG//FOnx8L/Jqh09vsxf/A
         0TdQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ABcj6oA8;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Return-Path: <sashal@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i12-v6si774738plt.5.2018.10.29.15.53.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Oct 2018 15:53:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ABcj6oA8;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from localhost (c-73-47-72-35.hsd1.nh.comcast.net [73.47.72.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B58E62081B;
	Mon, 29 Oct 2018 22:53:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1540853631;
	bh=FXg3kHAh7CC4S1hrhD7ZBXaqCb/Sn8TMGMdCA5q3Sy8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ABcj6oA8rnefEgIZYd0+Q4EJMtijr15xZ6ahteQpnDAku1CnekwNLytFCDVmoBYUg
	 DCj4poyICvJ45cHP3L1B+BTLpz/l11G22m8ZbEMYp5V0Y89nhnA8NAUFL35CL1VK8D
	 SiWEGaZXwUHZbZcnNB1kGBit2aJQHPthpqGrYPSo=
Date: Mon, 29 Oct 2018 18:53:49 -0400
From: Sasha Levin <sashal@kernel.org>
To: Kimberly Brown <kimbrownkd@gmail.com>
Cc: outreachy-kernel@googlegroups.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Bastien Nocera <hadess@hadess.net>,
	Hans de Goede <hdegoede@redhat.com>,
	Larry Finger <Larry.Finger@lwfinger.net>
Subject: Re: [Outreachy kernel] [PATCH 2/2] staging: rtl8723bs: core: cleanup
 incorrect indentations
Message-ID: <20181029225349.GA194472@sasha-vm>
References: <cover.1540850888.git.kimbrownkd@gmail.com>
 <aa90ccf2bfd8a8bcb2741c3eaae82ac881fcdb2e.1540850889.git.kimbrownkd@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Disposition: inline
In-Reply-To: <aa90ccf2bfd8a8bcb2741c3eaae82ac881fcdb2e.1540850889.git.kimbrownkd@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Mon, Oct 29, 2018 at 06:37:28PM -0400, Kimberly Brown wrote:
>diff --git a/drivers/staging/rtl8723bs/core/rtw_ieee80211.c b/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
>index 33f2649ba2ec..1092bcd34c50 100644
>--- a/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
>+++ b/drivers/staging/rtl8723bs/core/rtw_ieee80211.c
>@@ -670,17 +670,17 @@ int rtw_get_sec_ie(u8 *in_ie, uint in_len, u8 *rsn_ie, u16 *rsn_len, u8 *wpa_ie,
> 		authmode = in_ie[cnt];
>
> 		if ((authmode == _WPA_IE_ID_) && (!memcmp(&in_ie[cnt+2], &wpa_oui[0], 4))) {
>-				RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("\n rtw_get_wpa_ie: sec_idx =%d in_ie[cnt+1]+2 =%d\n", sec_idx, in_ie[cnt+1]+2));
>+			RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("\n rtw_get_wpa_ie: sec_idx =%d in_ie[cnt+1]+2 =%d\n", sec_idx, in_ie[cnt+1]+2));
>
>-				if (wpa_ie) {
>+			if (wpa_ie) {
> 				memcpy(wpa_ie, &in_ie[cnt], in_ie[cnt+1]+2);
>
> 				for (i = 0; i < (in_ie[cnt+1]+2); i = i+8) {
>-						RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("\n %2x,%2x,%2x,%2x,%2x,%2x,%2x,%2x\n",
>+					RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_, ("\n %2x,%2x,%2x,%2x,%2x,%2x,%2x,%2x\n",
> 									wpa_ie[i], wpa_ie[i+1], wpa_ie[i+2], wpa_ie[i+3], wpa_ie[i+4],
> 									wpa_ie[i+5], wpa_ie[i+6], wpa_ie[i+7]));
>-					}
> 				}
>+			}
>
> 				*wpa_len = in_ie[cnt+1]+2;
> 				cnt += in_ie[cnt+1]+2;  /* get next */

The indentation of these two lines is now wrong.


Also...

sed -i 's/else{/else {/g' drivers/staging/rtl8723bs/core/rtw_ieee80211.c

#OCD


--
Thanks,
Sasha

