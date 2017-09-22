X-GM-THRID: 6468588291165782016
X-Received: by 10.31.58.70 with SMTP id h67mr6620893vka.47.1506089295693;
        Fri, 22 Sep 2017 07:08:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.129.169.3 with SMTP id g3ls863086ywh.22.gmail; Fri, 22 Sep
 2017 07:08:14 -0700 (PDT)
X-Received: by 10.13.214.17 with SMTP id y17mr7007910ywd.155.1506089294759;
        Fri, 22 Sep 2017 07:08:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506089294; cv=none;
        d=google.com; s=arc-20160816;
        b=NbMasfx7/DEMQuSkPPYNeNh7/WijaI+3/u0zXqGjQYSaiuKsV6egn079vmhO9yXcYz
         2EJb9h3U8y/Iim7cOXtpHg7FvYyKBlfx3xTVKeufvoAMZMXdOGFSSc+z/SLfFfxyJP1T
         QJZp1lKtEp0Qb/6VhTOtnevXckelnzCWRYKk7rm97dLqFzlJh8Lf1ywaCNZd0VzD5VJW
         ERn1y6SkUoM//K505bEbdL6ZNsvqXqhTQm7vklQEoMNLypMw3agFP4nkhmq+IYgjTUxt
         Ax6Pt5Yzh9We9R6cqi+iP4QDWhZMcvKX4bS7gqkSUwccufpLD0XGpdi58JtKL1yaHW9F
         5J7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=bUbDSeQee/E3kaKEkXXCcYYnYkiRR8RhyWpDLXZIn4Y=;
        b=Hz0gIBKY7FATvKZuFq2MsaSWlK4KZWaRSO0KzS+MaUnPdcK8LTwBnx0TlOxKlTCgzI
         wNm3FEnBrC0X5q9O9ouINcGIysYaHW674iuB0hmhidi6orfAtcBGpTB+fw80zLyPyLe8
         ON8WAA9t0dB769hU440YSCtAV82oOysFPPsSJJhVOKdAxeei0hEXK9LcS6DZnAGWFV07
         hNrsFFT5z0KQpROkZakoLh672zkh39HoEpk67Ng7bJPbP23Dzd44pEVgGAw8Utt2wUT9
         nQHaxVDrBKIxSeucZ4IFykp0QJ4MP0VZs4x/5uJLmV8ZqEipvnoKvOxVVcaFSQGzsr0k
         sq1Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MvqB0Udv;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2607:f8b0:400d:c09::243 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-qk0-x243.google.com (mail-qk0-x243.google.com. [2607:f8b0:400d:c09::243])
        by gmr-mx.google.com with ESMTPS id z207si191277ywz.6.2017.09.22.07.08.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Sep 2017 07:08:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2607:f8b0:400d:c09::243 as permitted sender) client-ip=2607:f8b0:400d:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MvqB0Udv;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2607:f8b0:400d:c09::243 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x243.google.com with SMTP id c69so703837qke.5
        for <outreachy-kernel@googlegroups.com>; Fri, 22 Sep 2017 07:08:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=bUbDSeQee/E3kaKEkXXCcYYnYkiRR8RhyWpDLXZIn4Y=;
        b=MvqB0Udv2yswjh1Cp8JAYGQfghezQtPFTIkZEuOMr1StCcHQK5lCvaawr1zBKQn5Tu
         6UA7tO4ELX2x6rzRarhfxcAh5Def5MGPMENxDZx/rdO/sZuITHyUclEeKXr+ACchsXzV
         WARJVvAAcb4FBOSRnxU3c6wLbkBdK2BFikx+1DODjrFScaDs89d3suIrnR2ExA6pr7YC
         0rkVSYx/XNM7M51DSEqWjUTATulqcHN5IpwtcODPoCboyXKXaFG7sNAiJ+2ZgtTwzyup
         vwpZtlVy36BA9DgktFGgDave++GrMIPDXI11ZYTy71X85JE++V14LMdloJeha8PE5kVm
         gr2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=bUbDSeQee/E3kaKEkXXCcYYnYkiRR8RhyWpDLXZIn4Y=;
        b=OEAl1RFiqrhd4d6r30TUjevlSVHUpFV21BBXGCY3Uof50AD+ksEK3voogJ+aueyEQ2
         cwGc3/xO/8iqAASUxcFigkjktgOqz0hiKRNQfJl0l5iKO/c6bNcaGLWaEW0EMLo3aZX2
         Wz3gCLDNSjlyMqNxW3Y9xpWcuclqD6EDLnutfYlhERP140a7SzfjhM2YpMvKrgUNFdQl
         uayThrK+c+BGmuHgGlVh2ot2WtRePkvBHLTl5wIYy44NKkXWWNIs9ey/kSyMXdkD9i/3
         JiqvitwIP5rkb4KZLde6hwgIfF+74b8LWFdbn9p2paCCd/0XxTKocdjgMV5dwnzlVjeO
         3UMg==
X-Gm-Message-State: AHPjjUgIkwi3ypkeBmzeYySoIm3K3QnREcvckaIn7Eiy7qe/R2Lvktew
	h05PHc78EAnUosA90buSigE2hTplxpT3E7XL7EitlA==
X-Google-Smtp-Source: AOwi7QDiJEedd6IatVbvnu/V0+CTxpwx+hbmgAc9zh4OYRr/5oK9EVBFYiawR0noEqbRdPtNUFlgfUOwRbNBj8E/9n0=
X-Received: by 10.55.157.87 with SMTP id g84mr8173131qke.70.1506089294399;
 Fri, 22 Sep 2017 07:08:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.18.240 with HTTP; Fri, 22 Sep 2017 07:08:13 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1709221513400.3170@hadrien>
References: <cover.1506084848.git.georgiana.chelu93@gmail.com>
 <d4d5c3de83b0f69541a95edc96df02c9bf2d84da.1506084848.git.georgiana.chelu93@gmail.com>
 <alpine.DEB.2.20.1709221513400.3170@hadrien>
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
Date: Fri, 22 Sep 2017 17:08:13 +0300
Message-ID: <CALta04wjZeTVijDN4iHqK8bgfk5Lfo5V47t5S2k+9HRfzq4NVw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 2/2] Staging: rtl8723bs: core: Code
 clean up
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"

On 22 September 2017 at 16:14, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Fri, 22 Sep 2017, Georgiana Chelu wrote:
>
>> Clean the code to improve the coding style.
>>
>> Fix minor issues reported by checkpatch.pl:
>> * CHECK: Alignment should match open parenthesis
>> * WARNING: line over 80 characters
>
> Something went very wrong here.  The changes have nothing to do with the
> log message and the changes are not desirable.  The { stays up on the line
> with the end of the test expression.
>

I messed up the changes. Thank you for the review! I will resend the patch set.

Georgiana

> julia
>
>> Signed-off-by: Georgiana Chelu <georgiana.chelu93@gmail.com>
>> ---
>>  drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 36 ++++++++++++++++-----------
>>  1 file changed, 21 insertions(+), 15 deletions(-)
>>
>> diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
>> index 6c59faf..b88c6e1 100644
>> --- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
>> +++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
>> @@ -510,7 +510,8 @@ void free_mlme_ext_priv(struct mlme_ext_priv *pmlmeext)
>>       if (!padapter)
>>               return;
>>
>> -     if (padapter->bDriverStopped) {
>> +     if (padapter->bDriverStopped)
>> +     {
>>               del_timer_sync(&pmlmeext->survey_timer);
>>               del_timer_sync(&pmlmeext->link_timer);
>>               /* del_timer_sync(&pmlmeext->ADDBA_timer); */
>> @@ -638,7 +639,8 @@ unsigned int OnProbeReq(struct adapter *padapter, union recv_frame *precv_frame)
>>
>>  #ifdef CONFIG_AUTO_AP_MODE
>>       if (check_fwstate(pmlmepriv, _FW_LINKED) &&
>> -                     pmlmepriv->cur_network.join_res) {
>> +                 pmlmepriv->cur_network.join_res)
>> +     {
>>               struct sta_info *psta;
>>               u8 *mac_addr, *peer_addr;
>>               struct sta_priv *pstapriv = &padapter->stapriv;
>> @@ -761,8 +763,10 @@ unsigned int OnProbeReq(struct adapter *padapter, union recv_frame *precv_frame)
>>                       return _SUCCESS;
>>
>>  _issue_probersp:
>> -             if ((check_fwstate(pmlmepriv, _FW_LINKED)  &&
>> -                     pmlmepriv->cur_network.join_res) || check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE)) {
>> +             if ((check_fwstate(pmlmepriv, _FW_LINKED) &&
>> +                  pmlmepriv->cur_network.join_res) ||
>> +                 check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE))
>> +             {
>>                       /* DBG_871X("+issue_probersp during ap mode\n"); */
>>                       issue_probersp(padapter, get_sa(pframe), is_valid_p2p_probereq);
>>               }
>> @@ -2350,8 +2354,8 @@ void update_mgntframe_attrib_addr(struct adapter *padapter, struct xmit_frame *p
>>
>>  void dump_mgntframe(struct adapter *padapter, struct xmit_frame *pmgntframe)
>>  {
>> -     if (padapter->bSurpriseRemoved ||
>> -             padapter->bDriverStopped) {
>> +     if (padapter->bSurpriseRemoved || padapter->bDriverStopped)
>> +     {
>>               rtw_free_xmitbuf(&padapter->xmitpriv, pmgntframe->pxmitbuf);
>>               rtw_free_xmitframe(&padapter->xmitpriv, pmgntframe);
>>               return;
>> @@ -2368,8 +2372,8 @@ s32 dump_mgntframe_and_wait(struct adapter *padapter, struct xmit_frame *pmgntfr
>>       struct xmit_buf *pxmitbuf = pmgntframe->pxmitbuf;
>>       struct submit_ctx sctx;
>>
>> -     if (padapter->bSurpriseRemoved ||
>> -             padapter->bDriverStopped) {
>> +     if (padapter->bSurpriseRemoved || padapter->bDriverStopped)
>> +     {
>>               rtw_free_xmitbuf(&padapter->xmitpriv, pmgntframe->pxmitbuf);
>>               rtw_free_xmitframe(&padapter->xmitpriv, pmgntframe);
>>               return ret;
>> @@ -2397,8 +2401,8 @@ s32 dump_mgntframe_and_wait_ack(struct adapter *padapter, struct xmit_frame *pmg
>>       u32 timeout_ms = 500;/*   500ms */
>>       struct xmit_priv *pxmitpriv = &padapter->xmitpriv;
>>
>> -     if (padapter->bSurpriseRemoved ||
>> -             padapter->bDriverStopped) {
>> +     if (padapter->bSurpriseRemoved || padapter->bDriverStopped)
>> +     {
>>               rtw_free_xmitbuf(&padapter->xmitpriv, pmgntframe->pxmitbuf);
>>               rtw_free_xmitframe(&padapter->xmitpriv, pmgntframe);
>>               return -1;
>> @@ -6356,10 +6360,11 @@ static int rtw_scan_ch_decision(struct adapter *padapter, struct rtw_ieee80211_c
>>               DBG_871X(FUNC_ADPT_FMT" "CHAN_FMT"\n", FUNC_ADPT_ARG(padapter), CHAN_ARG(&in[i]));
>>
>>               set_idx = rtw_ch_set_search_ch(pmlmeext->channel_set, in[i].hw_value);
>> -             if (in[i].hw_value && !(in[i].flags & RTW_IEEE80211_CHAN_DISABLED)
>> -                     && set_idx >= 0
>> -                     && rtw_mlme_band_check(padapter, in[i].hw_value)
>> -             ) {
>> +             if (in[i].hw_value &&
>> +                 !(in[i].flags & RTW_IEEE80211_CHAN_DISABLED) &&
>> +                 set_idx >= 0 &&
>> +                 rtw_mlme_band_check(padapter, in[i].hw_value))
>> +             {
>>                       if (j >= out_num) {
>>                               DBG_871X_LEVEL(_drv_always_, FUNC_ADPT_FMT" out_num:%u not enough\n",
>>                                       FUNC_ADPT_ARG(padapter), out_num);
>> @@ -6383,7 +6388,8 @@ static int rtw_scan_ch_decision(struct adapter *padapter, struct rtw_ieee80211_c
>>
>>                       DBG_871X(FUNC_ADPT_FMT" ch:%u\n", FUNC_ADPT_ARG(padapter), pmlmeext->channel_set[i].ChannelNum);
>>
>> -                     if (rtw_mlme_band_check(padapter, pmlmeext->channel_set[i].ChannelNum)) {
>> +                     if (rtw_mlme_band_check(padapter, pmlmeext->channel_set[i].ChannelNum))
>> +                     {
>>
>>                               if (j >= out_num) {
>>                                       DBG_871X_LEVEL(_drv_always_, FUNC_ADPT_FMT" out_num:%u not enough\n",
>> --
>> 2.7.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/d4d5c3de83b0f69541a95edc96df02c9bf2d84da.1506084848.git.georgiana.chelu93%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

