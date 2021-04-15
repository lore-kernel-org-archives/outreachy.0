X-GM-THRID: 6951428927234506752
X-Received: by 2002:a4a:eb02:: with SMTP id f2mr117472ooj.36.1618505671738;
        Thu, 15 Apr 2021 09:54:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6808:13d0:: with SMTP id d16ls1463845oiw.10.gmail; Thu,
 15 Apr 2021 09:54:31 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxvPfp8ehzskF4sbHOMSp+OnsRQVPjraYfILEmMvQ/8NY/Qnxc4Wmr1xn0jeuVSeE8tJtGy
X-Received: by 2002:aca:db85:: with SMTP id s127mr3247039oig.142.1618505671067;
        Thu, 15 Apr 2021 09:54:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618505671; cv=none;
        d=google.com; s=arc-20160816;
        b=CNm833SZ3JNLfXyM9Kt5diaQxBiMWPln9S6xmWOkbuQoNhfyiYwRj1Vjy4A8YKYJpJ
         dhet2WB2eu3+J1DIC013p6rpkyrJVJ6TDHsB19c/bgTuAWHT8K2YwV7bbGVynNEPbzPO
         jhq0MLYgaMCR6DsnItmoTtpMEe2tFyW3AfgCHA2paFrG9SU9nW0FdaOBW15FKrDKuegW
         K73LDnXSZPQejFTTtsKQGXvgj6sW9KHMwDx9SWb4h/0WnRSSBqc19mgCA0ZXSvcGocYK
         GbC6mdWuglL9sRAETrUTeUpWI5QsTKpOfzIMyZhBnQsA0YeOIYkxU/h9rWN21y0POIkd
         yxEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=hfH9qknOEmohu17OrwvjCdEEb8rYc5CBKzPF1LsT3eY=;
        b=eshOSwcXZrUJKD6bLbKWE6r5kKTUAi8nmTUq/kNcL6Y69zisHgQa1Gz5HGgJt/6jAC
         cptbF6xb19LgzeQ6/RXxDuxPplviv1LOTsJOtgiKleavVHq68ZGyq/7NeNQ4B3yimtPL
         xaKNmsD6mH13dhvLZIAEFWLmoVHDsNlvAgKDWHc5qOWdkO8NAX+uAGVujGEFMHzAT2ur
         hjUDVwHswhYlJIclfobiViCCMB1wdaAzW8OdSqN5FhroRyFyw+0dTyCNJEBrEEZQgoEd
         jLtheST3+D8BYdOQMRnEoaP3QWH3AFkg8ktyqo0N2YdVmL/FDMONEp1+tSzahSeg1k0c
         p9OQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HzCYmhgb;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::72b as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from mail-qk1-x72b.google.com (mail-qk1-x72b.google.com. [2607:f8b0:4864:20::72b])
        by gmr-mx.google.com with ESMTPS id m62si250549oig.5.2021.04.15.09.54.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Apr 2021 09:54:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::72b as permitted sender) client-ip=2607:f8b0:4864:20::72b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HzCYmhgb;
       spf=pass (google.com: domain of alinesantanacordeiro@gmail.com designates 2607:f8b0:4864:20::72b as permitted sender) smtp.mailfrom=alinesantanacordeiro@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x72b.google.com with SMTP id h13so7232264qka.2
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Apr 2021 09:54:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=hfH9qknOEmohu17OrwvjCdEEb8rYc5CBKzPF1LsT3eY=;
        b=HzCYmhgbLL5xC8q4+NrcVQ3vIVEBudkfm4plF8E6VgB6YhvtP2uyfobR4oGYRqc2Wi
         Q5DGBKpm/SDyP1yoMOxMC1jhtsZ2069gFEzpzJ9wx3Q0d8U3ykMwuQNmnqJS3urjDLPL
         JnEQOW6B8VCio8ObDanO5gEpypAHZWUe0vAnAjAdUiTe6ALa0nNBfuaA0rGXxDtALEwh
         A71fyif6OZWf6DSJpxi4I2i1enFxLqkggYqtbmp+XybqdK6HpDL+i6/7kU/tGQbIuIob
         cJESNvbo00sUZobY3tcS8JEurg64cXZLCYpSLuQd84nZmN2LoLd4tzSzBQUxvSXhhYkD
         TW1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=hfH9qknOEmohu17OrwvjCdEEb8rYc5CBKzPF1LsT3eY=;
        b=t/ZCg58uSW4jhSSCmz7Y6e8rsX6GNU9IIfxNUmRUZDusDP05zKNnoBhj8r+mphIoqi
         7//hwnCRT1xgUSXFwZ2A1D7Ot9S345Pkx56L59gPpdh6XsApWEyK9ebxIVJkMyUAhpTy
         yqOPbDnULUZCxbs4+VCosZXyidwmIRZutvtxP52JG4O9PDfRDJBPBfW0bheL0NbQvWVe
         Vf8R0uVaCAzo6MQzTsXzd0JlAvWSQSHuagrfkG62EithsrQfmzVvELCxcgfQcdLJ05Vs
         VerdnRWxcTzzc1NThcA43tgJfjvkPjlOG4TagIWOR9HOxSCUrYOhqnvyCgsEcModkZ9d
         K2iA==
X-Gm-Message-State: AOAM533IDBUyCPluXq8cLkrtR+Qtoz50FGokCc3LIZbcb4aMwU3vfEj6
	A/VWtxQFBvbSB9OKPuaTfZop9Do4eqKsxUdP
X-Received: by 2002:a37:6693:: with SMTP id a141mr2048435qkc.121.1618505670663;
        Thu, 15 Apr 2021 09:54:30 -0700 (PDT)
Return-Path: <alinesantanacordeiro@gmail.com>
Received: from focaruja ([138.204.24.234])
        by smtp.gmail.com with ESMTPSA id q125sm2431762qke.11.2021.04.15.09.54.29
        (version=TLS1 cipher=ECDHE-ECDSA-AES128-SHA bits=128/128);
        Thu, 15 Apr 2021 09:54:30 -0700 (PDT)
Date: Thu, 15 Apr 2021 13:54:27 -0300
From: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Sakari Ailus <sakari.ailus@linux.intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH 2/4] staging: media: atomisp: pci: Balance braces around
 conditional statements in file atomisp_compat_css20.c
Message-ID: <f62bb001e25d0ba395810de7f02452c7a13869c1.1618505476.git.alinesantanacordeiro@gmail.com>
References: <cover.1618505476.git.alinesantanacordeiro@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1618505476.git.alinesantanacordeiro@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Balance braces around conditional statements.
Issue detected by checkpatch.pl.
It happens in if-else statements where one of the commands
uses braces around a block of code and the other command
does not since it has just a single line of code.

Signed-off-by: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>
---
 drivers/staging/media/atomisp/pci/atomisp_compat_css20.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp_compat_css20.c b/drivers/staging/media/atomisp/pci/atomisp_compat_css20.c
index faa0935..92e2bad 100644
--- a/drivers/staging/media/atomisp/pci/atomisp_compat_css20.c
+++ b/drivers/staging/media/atomisp/pci/atomisp_compat_css20.c
@@ -2784,9 +2784,9 @@ int atomisp_get_css_frame_info(struct atomisp_sub_device *asd,
 	int stream_index;
 	struct atomisp_device *isp = asd->isp;
 
-	if (ATOMISP_SOC_CAMERA(asd))
+	if (ATOMISP_SOC_CAMERA(asd)) {
 		stream_index = atomisp_source_pad_to_stream_id(asd, source_pad);
-	else {
+	} else {
 		stream_index = (pipe_index == IA_CSS_PIPE_ID_YUVPP) ?
 			       ATOMISP_INPUT_STREAM_VIDEO :
 			       atomisp_source_pad_to_stream_id(asd, source_pad);
-- 
2.7.4


