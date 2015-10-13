X-GM-THRID: 6205086344963686400
X-Received: by 10.112.158.202 with SMTP id ww10mr7036009lbb.13.1444740393276;
        Tue, 13 Oct 2015 05:46:33 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.40.133 with SMTP id o127ls578431lfo.38.gmail; Tue, 13 Oct
 2015 05:46:32 -0700 (PDT)
X-Received: by 10.112.169.34 with SMTP id ab2mr6882508lbc.23.1444740392774;
        Tue, 13 Oct 2015 05:46:32 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wi0-x229.google.com (mail-wi0-x229.google.com. [2a00:1450:400c:c05::229])
        by gmr-mx.google.com with ESMTPS id m4si131415wib.0.2015.10.13.05.46.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 05:46:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) client-ip=2a00:1450:400c:c05::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x229.google.com with SMTP id ge5so55509595wic.0
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2015 05:46:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=s8nr0eidYJsk/ZSD35R+weykZyspQTtu3lUMb7tRRng=;
        b=geRxqjOGfTSAXX36UJnOGWRXoo0H4rDpglAy4yQ6ySCycB2k8Q3SxMX3iTjho/5W+f
         MTrVU1qj4g8dN9agczwAoCe43orNfAUzZbC5khqb52kN7WrSW7ZXWx1jrEyIrj7v8txx
         H0RLH8ANMlH8GSnt2BrKlZDdeQAW0y6WGFQ0rRN9gsbs3p7Zrz3Tc/euZRyyHdkWCBgP
         LBJzAXd8MV6ipS3KCYtz3mK4qNtI5c9rD+x9dm65jbK7FPIhgNfcb74BJoszGLJgq+jd
         iOA7Uxd99q4y40xamDFF6xmTguT2Eamp7TQfRDCXPPtuLJ8BWY3Le5WbuPOU91sehqHB
         PpKQ==
MIME-Version: 1.0
X-Received: by 10.194.52.6 with SMTP id p6mr41304729wjo.119.1444740392639;
 Tue, 13 Oct 2015 05:46:32 -0700 (PDT)
Received: by 10.27.186.66 with HTTP; Tue, 13 Oct 2015 05:46:32 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1510131319060.2391@hadrien>
References: <cover.1444733999.git.shivanib134@gmail.com>
	<20f17185a553556d1d6d806811bf068cd727a689.1444733999.git.shivanib134@gmail.com>
	<alpine.DEB.2.10.1510131319060.2391@hadrien>
Date: Tue, 13 Oct 2015 18:16:32 +0530
Message-ID: <CAKHNQQFMF=dEO2=1fZD+g6HiwV9xfAqjSe8AD21AsOF6P5sbqA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 2/2] Staging: wilc1000:
 wilc_wfi_cfgoperations: Change variable to bool
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Tue, Oct 13, 2015 at 4:50 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Tue, 13 Oct 2015, Shivani Bhardwaj wrote:
>
>> Change variable of the type u8 to bool as the only values acquired by it
>> are true or false.
>
> This looks better, but now I think that PMKID_FOUND is not used anywhere,
> so its definition can be removed.
>
> julia
>
I've removed that from header, should I send a v3 with header file's
changes included? Or I can send it individually?
Thank you

>> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
>> ---
>>  drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 6 +++---
>>  1 file changed, 3 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
>> index d2e6f55..e4c134a 100644
>> --- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
>> +++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
>> @@ -1714,7 +1714,7 @@ static int set_pmksa(struct wiphy *wiphy, struct net_device *netdev,
>>  {
>>       u32 i;
>>       s32 s32Error = 0;
>> -     u8 flag = 0;
>> +     bool pmkid_found = false;
>>
>>       struct wilc_priv *priv = wiphy_priv(wiphy);
>>
>> @@ -1725,7 +1725,7 @@ static int set_pmksa(struct wiphy *wiphy, struct net_device *netdev,
>>               if (!memcmp(pmksa->bssid, priv->pmkid_list.pmkidlist[i].bssid,
>>                                ETH_ALEN)) {
>>                       /*If bssid already exists and pmkid value needs to reset*/
>> -                     flag = PMKID_FOUND;
>> +                     pmkid_found = true;
>>                       PRINT_D(CFG80211_DBG, "PMKID already exists\n");
>>                       break;
>>               }
>> @@ -1736,7 +1736,7 @@ static int set_pmksa(struct wiphy *wiphy, struct net_device *netdev,
>>                           ETH_ALEN);
>>               memcpy(priv->pmkid_list.pmkidlist[i].pmkid, pmksa->pmkid,
>>                           PMKID_LEN);
>> -             if (!(flag == PMKID_FOUND))
>> +             if (!pmkid_found)
>>                       priv->pmkid_list.numpmkid++;
>>       } else {
>>               PRINT_ER("Invalid PMKID index\n");
>> --
>> 2.1.0
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20f17185a553556d1d6d806811bf068cd727a689.1444733999.git.shivanib134%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

