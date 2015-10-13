X-GM-THRID: 6205076512382648320
X-Received: by 10.112.144.99 with SMTP id sl3mr6710784lbb.12.1444733082631;
        Tue, 13 Oct 2015 03:44:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.43.135 with SMTP id r129ls652272lfr.93.gmail; Tue, 13 Oct
 2015 03:44:42 -0700 (PDT)
X-Received: by 10.112.158.202 with SMTP id ww10mr6903080lbb.13.1444733082005;
        Tue, 13 Oct 2015 03:44:42 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wi0-x22f.google.com (mail-wi0-x22f.google.com. [2a00:1450:400c:c05::22f])
        by gmr-mx.google.com with ESMTPS id c7si693153wiy.3.2015.10.13.03.44.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 03:44:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) client-ip=2a00:1450:400c:c05::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22f.google.com with SMTP id q8so24074475wij.0
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2015 03:44:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=+dYfND1Y3OT0k5O4SJ54X6tzxbWAypvXiWJlPY1jujk=;
        b=LMhngI/pMRZbPuC6hnCuvkmafva9NXkGAwudXNjXHgPKfDWUgHqoUHuGcDqGJ6NQXc
         m9ZDuHVMbtIXXuIXT1zLiaF61K07kEvKX/iy9sTPv604n39SPgI5a6qEV8IEg7ty8waM
         PnUm7pYEE65+/yFuSpp+8pBsGMGQw1vVaQ10P0apcEJphWPbahj/CjEfNVP1HdWLdRM1
         bAGS/Tt7bqWMo4kzn8jyrf3nIsh9r1Sp6xYyxtLQHMbqKmUEii9O+Jo8i3SZHcDg9czk
         iHFmrNzWthEnZsr2lZBiHqU9e6SyLzYTjp2G1dG6d3FftRpd5hQYVtL+JoHrbW6CViF5
         nHwA==
MIME-Version: 1.0
X-Received: by 10.180.189.41 with SMTP id gf9mr18434010wic.95.1444733081809;
 Tue, 13 Oct 2015 03:44:41 -0700 (PDT)
Received: by 10.27.186.66 with HTTP; Tue, 13 Oct 2015 03:44:41 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1510131240030.2391@hadrien>
References: <20151013102548.GA8383@ubuntu>
	<alpine.DEB.2.10.1510131240030.2391@hadrien>
Date: Tue, 13 Oct 2015 16:14:41 +0530
Message-ID: <CAKHNQQECxUAcT1O-VDhOECyCC4Pwj5EAUzM2OfT3UxWQvtSP=w@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: wilc1000:
 wilc_wfi_cfgoperations: Remove unnecessary constants
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Tue, Oct 13, 2015 at 4:11 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Tue, 13 Oct 2015, Shivani Bhardwaj wrote:
>
>> Remove constants wherever not required and change variables to bool type
>> to get rid of constants.
>
> This seems like two unrelated things.  I think you could put them in
> different patches.
>
>> Semantic patch used:
>>
>> @@
>> type T;
>> identifier i;
>> constant C;
>> position p != e.p;
>> @@
>>
>> - T i@p;
>>   <+... when != i
>> - i = C;
>>   ...+>
>>
>> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
>> ---
>> Changes in v2:
>>       -Improve the patch by completely eliminating the constant.
>>
>>  drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 8 +++-----
>>  1 file changed, 3 insertions(+), 5 deletions(-)
>>
>> diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
>> index 6472777..f6259f7 100644
>> --- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
>> +++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
>> @@ -1714,7 +1714,7 @@ static int set_pmksa(struct wiphy *wiphy, struct net_device *netdev,
>>  {
>>       u32 i;
>>       s32 s32Error = 0;
>> -     u8 flag = 0;
>> +     bool flag = 0;
>
> Actually, my thought was to have a bool variable called pmkid_found.  That
> would be more understandable than flag.
>
> Also the initial value should be false, not 0.
>

Fine. I'm sending a patch set.
Thank you. :)

>>       struct wilc_priv *priv = wiphy_priv(wiphy);
>>
>> @@ -1725,7 +1725,7 @@ static int set_pmksa(struct wiphy *wiphy, struct net_device *netdev,
>>               if (!memcmp(pmksa->bssid, priv->pmkid_list.pmkidlist[i].bssid,
>>                                ETH_ALEN)) {
>>                       /*If bssid already exists and pmkid value needs to reset*/
>> -                     flag = PMKID_FOUND;
>> +                     flag = 1;
>
> And here the value would be true.
>
> julia
>
>>                       PRINT_D(CFG80211_DBG, "PMKID already exists\n");
>>                       break;
>>               }
>> @@ -1736,7 +1736,7 @@ static int set_pmksa(struct wiphy *wiphy, struct net_device *netdev,
>>                           ETH_ALEN);
>>               memcpy(priv->pmkid_list.pmkidlist[i].pmkid, pmksa->pmkid,
>>                           PMKID_LEN);
>> -             if (!(flag == PMKID_FOUND))
>> +             if (!flag)
>>                       priv->pmkid_list.numpmkid++;
>>       } else {
>>               PRINT_ER("Invalid PMKID index\n");
>> @@ -1764,7 +1764,6 @@ static int del_pmksa(struct wiphy *wiphy, struct net_device *netdev,
>>  {
>>
>>       u32 i;
>> -     u8 flag = 0;
>>       s32 s32Error = 0;
>>
>>       struct wilc_priv *priv = wiphy_priv(wiphy);
>> @@ -1777,7 +1776,6 @@ static int del_pmksa(struct wiphy *wiphy, struct net_device *netdev,
>>                       /*If bssid is found, reset the values*/
>>                       PRINT_D(CFG80211_DBG, "Reseting PMKID values\n");
>>                       memset(&priv->pmkid_list.pmkidlist[i], 0, sizeof(struct host_if_pmkid));
>> -                     flag = PMKID_FOUND;
>>                       break;
>>               }
>>       }
>> --
>> 2.1.0
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151013102548.GA8383%40ubuntu.
>> For more options, visit https://groups.google.com/d/optout.
>>

