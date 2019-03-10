X-GM-THRID: 6666820090157072384
X-Received: by 2002:aca:aa94:: with SMTP id t142mr29995517oie.17.1552244172098;
        Sun, 10 Mar 2019 11:56:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:afc3:: with SMTP id y186ls3854852oie.4.gmail; Sun, 10
 Mar 2019 11:56:09 -0700 (PDT)
X-Google-Smtp-Source: AHgI3IZXKmbpUulJbQafcdgzy00LvzdmUpbQZCGcUTSpzU37SKUXGEwVUSDl2AWhICeHIdFa7Qp+
X-Received: by 2002:aca:62c3:: with SMTP id w186mr30540204oib.33.1552244169901;
        Sun, 10 Mar 2019 11:56:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552244169; cv=none;
        d=google.com; s=arc-20160816;
        b=0MJKR4bwfVcCl5monGXR9WmOjkz4gwtCx61pFDAmtwaTC/pxA2LuIZ7A3AEAWwWv1f
         mp2YDW/fU6OovAy2BgMfPZXD8uSZrzRrUyEbXxj4bdQEAN0qm4YZYiJXCE4jGLmjUqp7
         r2sW+OsVeOI4gaznPPE+CxYfEgLTR2Czsqp5pMj13CbFhPfXo0KO8H+WcUfkE4PLicpF
         DzIxGnd26TUra/th3iMGgNRV0LC49NU0Va3cDAP6Dh/aQerinSK1EXNNXSUGmpAO+mHD
         SWt+wYXTAyYr6omJ93NnDsAZtOUL22xGpIy/hRBF6YxvtV2r9+oXna6idwcvI1ajCI92
         O9ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:dkim-signature;
        bh=Fn90umdFrrRUvg1neVeUF/wyMnftizA3/RHv5LxIHvM=;
        b=wJC4HGVLY9YIlpotD/n11Md/yNitaKyK2uKqORIMXfB4F8Ac8kI8smLWTmkiBmhC0w
         joQ5Nqr5RE5Wtmx8cAxxhrbFR83uFDEwBfevyUwIzfxgqh3ZH5KyToUIHPTmjNz5E074
         kQkyMKymgI6o+5tk5JDe/K7ODnjncyLgARD2hbdIA1QI9sw3bJqrHUX8pdh9Jyg23IWB
         M3DXJ1NlXOc7wchFJ2fRnJuonyvgxELPeQj4ixxhhnMmjbidkHnvrb94JJB/DNBSunaU
         Ncif8rIAFr6AvUjZwRFCNKXB4oJ+HjoiwVmTyAMYWxDJV5lZNOJZ29Q6y6llyjvPKo4n
         bfLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=t1++kws4;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id f96si87862otb.2.2019.03.10.11.56.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Mar 2019 11:56:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=t1++kws4;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id m2so2270856pgl.5
        for <outreachy-kernel@googlegroups.com>; Sun, 10 Mar 2019 11:56:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=Fn90umdFrrRUvg1neVeUF/wyMnftizA3/RHv5LxIHvM=;
        b=t1++kws4u4ILzQkAx+jT097255GBvadxNCNQE9cndfl3/ODieOn12slBkW1tvKd/rg
         qqw2qKu0026BeHFSgz2VVbxCabRsrLktJf+++uHmnzj3FIcSq/rpE7jkn5A95yc0k3Vx
         fBGuDGTh+KvbuseWsyav3MkFQced6RJl6sc2BRsalHRcizqanHTFu7GT1S9DO4vD3YRe
         9t0ydUsZz8MV8ECQvbf4+IQHCaRHYrocJNK6AqxTpRLNVtYYkxMNXkwMicJtxPS2ntvu
         mXoGNIrOJIMtqwO6aRFDjhwA8Nxgo0hh3m/gh1dH8oJebaWTMDQ0mERsiUgclVfDRY4n
         OS/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to;
        bh=Fn90umdFrrRUvg1neVeUF/wyMnftizA3/RHv5LxIHvM=;
        b=Bo3oeL4MXvJukRA17HnJQiKxT1JRQCuRw287qyS/n4PfA72uu2s8hPTtr9HCQCFr2S
         lfvE12Wl3e/x/zvJOrq3mkdfpzDeC0Qfwj1lr+u7whZlmkki735pDffVN8AzcJE6lAea
         GKuOzuhEuq991FjzUKSYWd9JcN7WzNTeX46jaXIp3VST3vociANKMFiBh2RNkM8HRdCH
         yRPIqsJ5adNxFVrg8EZfPWo8ShwGf4qUOVLIF5znk0omoitVXhAuOCO7kaYVkbyXYG38
         db8JQv3R87gmnO197bQc++Bfvjapi1ZpNS7ky22W4iAVTEIErwjred8oAWlj/9r1khds
         mkJw==
X-Gm-Message-State: APjAAAX0s9LLH1L6uMFFJepKtnFMXKUdTAOoUnuPHevx365joPXvZ+ig
	t86Srpvytkpt99mlsyzsyofvuz1tSeQ=
X-Received: by 2002:a63:cc05:: with SMTP id x5mr26491522pgf.31.1552244169016;
        Sun, 10 Mar 2019 11:56:09 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from ?IPv6:2401:4900:16b3:eb2b:247f:a464:cd2f:24af? ([2401:4900:16b3:eb2b:247f:a464:cd2f:24af])
        by smtp.gmail.com with ESMTPSA id q7sm7524294pfa.119.2019.03.10.11.56.07
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Mar 2019 11:56:08 -0700 (PDT)
Content-Type: text/plain;
	charset=us-ascii
Mime-Version: 1.0 (1.0)
Subject: Re: [Outreachy kernel] [PATCH v2 5/5] Staging: rtl8192u: Remove typedef for struct _RX_REORDER_ENTRY
From: Bhanusree Mahesh <bhanusreemahesh@gmail.com>
X-Mailer: iPhone Mail (16D57)
In-Reply-To: <alpine.DEB.2.21.1903101908440.3131@hadrien>
Date: Mon, 11 Mar 2019 00:26:01 +0530
Cc: outreachy-kernel@googlegroups.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Transfer-Encoding: quoted-printable
Message-Id: <986CD150-9565-4962-B036-43CFCBEFF7FE@gmail.com>
References: <20190310174635.16923-1-bhanusreemahesh@gmail.com> <20190310174635.16923-6-bhanusreemahesh@gmail.com> <alpine.DEB.2.21.1903101908440.3131@hadrien>
To: Julia Lawall <julia.lawall@lip6.fr>



> On Mar 10, 2019, at 23:42, Julia Lawall <julia.lawall@lip6.fr> wrote:
>=20
>=20
>=20
>> On Sun, 10 Mar 2019, Bhanusree Pola wrote:
>>=20
>> -Avoid typedefs for structure types to maintain kernel coding style.
>> -Remove typedefs RX_REORDER_ENTRY  and *PRX_REORDER_ENTRY  of struct _RX_=
REORDER_ENTRY .
>> -Change Structure name _RX_REORDER_ENTRY  to rx_reorder_entry to maintain=
 Linux kernel Coding Style.
>> -Replace occurences of RX_REORDER_ENTRY  to struct rx_reorder_entry.
>> -Replace occurences of PRX_REORDER_ENTRY  to struct rx_reorder_entry *.
>>=20
>> Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
>> ---
>> drivers/staging/rtl8192u/ieee80211/ieee80211.h      |  6 +++---
>> drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c   | 12 ++++++------
>> drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c | 10 +++++-----
>> 3 files changed, 14 insertions(+), 14 deletions(-)
>>=20
>> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211.h b/drivers/sta=
ging/rtl8192u/ieee80211/ieee80211.h
>> index 6986b51b37c4..b19b0cf01e1f 100644
>> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211.h
>> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
>> @@ -1474,11 +1474,11 @@ struct bandwidth_autoswitch {
>>=20
>> #define REORDER_WIN_SIZE    128
>> #define REORDER_ENTRY_NUM    128
>> -typedef struct _RX_REORDER_ENTRY {
>> +struct rx_reorder_entry {
>>    struct list_head    List;
>>    u16            SeqNum;
>>    struct ieee80211_rxb *prxb;
>> -} RX_REORDER_ENTRY, *PRX_REORDER_ENTRY;
>> +};
>> //added by amy for order
>> typedef enum _Fsync_State {
>>    Default_Fsync,
>> @@ -1654,7 +1654,7 @@ struct ieee80211_device {
>>    struct list_head        Rx_TS_Unused_List;
>>    struct rx_ts_record        RxTsRecord[TOTAL_TS_NUM];
>> //#ifdef TO_DO_LIST
>> -    RX_REORDER_ENTRY    RxReorderEntry[128];
>> +    struct rx_reorder_entry        RxReorderEntry[128];
>>    struct list_head        RxReorder_Unused_List;
>> //#endif
>>    // Qos related. Added by Annie, 2005-11-01.
>> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/=
staging/rtl8192u/ieee80211/ieee80211_rx.c
>> index 5147f7c01e31..17d50476bdb2 100644
>> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
>> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
>> @@ -508,16 +508,16 @@ static int is_duplicate_packet(struct ieee80211_dev=
ice *ieee,
>>    return 1;
>> }
>>=20
>> -static bool AddReorderEntry(struct rx_ts_record *pTS, PRX_REORDER_ENTRY p=
ReorderEntry)
>> +static bool AddReorderEntry(struct rx_ts_record *pTS, struct rx_reorder_=
entry *pReorderEntry)
>> {
>>    struct list_head *pList =3D &pTS->rx_pending_pkt_list;
>>    while(pList->next !=3D &pTS->rx_pending_pkt_list)
>>    {
>> -        if( SN_LESS(pReorderEntry->SeqNum, ((PRX_REORDER_ENTRY)list_entr=
y(pList->next,RX_REORDER_ENTRY,List))->SeqNum) )
>> +        if( SN_LESS(pReorderEntry->SeqNum, ((struct rx_reorder_entry *)l=
ist_entry(pList->next, struct rx_reorder_entry, List))->SeqNum) )
>>        {
>>            pList =3D pList->next;
>>        }
>> -        else if( SN_EQUAL(pReorderEntry->SeqNum, ((PRX_REORDER_ENTRY)lis=
t_entry(pList->next,RX_REORDER_ENTRY,List))->SeqNum) )
>> +        else if( SN_EQUAL(pReorderEntry->SeqNum, ((struct rx_reorder_ent=
ry *)list_entry(pList->next, struct rx_reorder_entry, List))->SeqNum) )
>>        {
>>            return false;
>>        }
>> @@ -589,7 +589,7 @@ static void RxReorderIndicatePacket(struct ieee80211_=
device *ieee,
>>                    struct rx_ts_record *pTS, u16 SeqNum)
>> {
>>    PRT_HIGH_THROUGHPUT    pHTInfo =3D ieee->pHTInfo;
>> -    PRX_REORDER_ENTRY    pReorderEntry =3D NULL;
>> +    struct rx_reorder_entry    *pReorderEntry =3D NULL;
>>    struct ieee80211_rxb **prxbIndicateArray;
>>    u8            WinSize =3D pHTInfo->RxReorderWinSize;
>>    u16            WinEnd =3D (pTS->rx_indicate_seq + WinSize - 1) % 4096;=

>> @@ -663,7 +663,7 @@ static void RxReorderIndicatePacket(struct ieee80211_=
device *ieee,
>>        /* Current packet is going to be inserted into pending list.*/
>>        //IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): We RX no ordered pac=
ked, insert to ordered list\n",__func__);
>>        if(!list_empty(&ieee->RxReorder_Unused_List)) {
>> -            pReorderEntry =3D (PRX_REORDER_ENTRY)list_entry(ieee->RxReor=
der_Unused_List.next,RX_REORDER_ENTRY,List);
>> +            pReorderEntry =3D (struct rx_reorder_entry *)list_entry(ieee=
->RxReorder_Unused_List.next, struct rx_reorder_entry, List);
>=20
> You have made the 80 character problems worse.  But you are in luck,
> because the casts on the return values of list_entry are useless.
> list_entry is a macro and already casts its return value to the type
> mentioned in its second argument.
Should I remove the typecast of return value ?
This must be done in the same patch right ?
>=20
> This could be an extra patch in the series.  In that patch, for the ifs
> that are above, you could also adjust the spacing around the if and the
> condition expression to follow the kernel guidelines.
Only this exclusively would be an extra patch ?
>=20
> The patches are now much more readable with only one typedef at a time :)
>=20
> julia
>=20
>=20
>>            list_del_init(&pReorderEntry->List);
>>=20
>>            /* Make a reorder entry and insert into a the packet list.*/
>> @@ -709,7 +709,7 @@ static void RxReorderIndicatePacket(struct ieee80211_=
device *ieee,
>>    /* Check if there is any packet need indicate.*/
>>    while(!list_empty(&pTS->rx_pending_pkt_list)) {
>>        IEEE80211_DEBUG(IEEE80211_DL_REORDER,"%s(): start RREORDER indicat=
e\n",__func__);
>> -        pReorderEntry =3D (PRX_REORDER_ENTRY)list_entry(pTS->rx_pending_=
pkt_list.prev,RX_REORDER_ENTRY,List);
>> +        pReorderEntry =3D (struct rx_reorder_entry *)list_entry(pTS->rx_=
pending_pkt_list.prev, struct rx_reorder_entry, List);
>>        if (SN_LESS(pReorderEntry->SeqNum, pTS->rx_indicate_seq) ||
>>            SN_EQUAL(pReorderEntry->SeqNum, pTS->rx_indicate_seq))
>>        {
>> diff --git a/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c b/driver=
s/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
>> index c76715ffa08b..aefa37b285b3 100644
>> --- a/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
>> +++ b/drivers/staging/rtl8192u/ieee80211/rtl819x_TSProc.c
>> @@ -28,7 +28,7 @@ static void RxPktPendingTimeout(struct timer_list *t)
>>    struct rx_ts_record     *pRxTs =3D from_timer(pRxTs, t, rx_pkt_pending=
_timer);
>>    struct ieee80211_device *ieee =3D container_of(pRxTs, struct ieee80211=
_device, RxTsRecord[pRxTs->num]);
>>=20
>> -    PRX_REORDER_ENTRY    pReorderEntry =3D NULL;
>> +    struct rx_reorder_entry    *pReorderEntry =3D NULL;
>>=20
>>    //u32 flags =3D 0;
>>    unsigned long flags =3D 0;
>> @@ -40,7 +40,7 @@ static void RxPktPendingTimeout(struct timer_list *t)
>>    if(pRxTs->rx_timeout_indicate_seq !=3D 0xffff) {
>>        // Indicate the pending packets sequentially according to SeqNum u=
ntil meet the gap.
>>        while(!list_empty(&pRxTs->rx_pending_pkt_list)) {
>> -            pReorderEntry =3D (PRX_REORDER_ENTRY)list_entry(pRxTs->rx_pe=
nding_pkt_list.prev, RX_REORDER_ENTRY, List);
>> +            pReorderEntry =3D (struct rx_reorder_entry *)list_entry(pRxT=
s->rx_pending_pkt_list.prev, struct rx_reorder_entry, List);
>>            if(index =3D=3D 0)
>>                pRxTs->rx_indicate_seq =3D pReorderEntry->SeqNum;
>>=20
>> @@ -133,7 +133,7 @@ void TSInitialize(struct ieee80211_device *ieee)
>> {
>>    struct tx_ts_record     *pTxTS  =3D ieee->TxTsRecord;
>>    struct rx_ts_record     *pRxTS  =3D ieee->RxTsRecord;
>> -    PRX_REORDER_ENTRY    pRxReorderEntry =3D ieee->RxReorderEntry;
>> +    struct rx_reorder_entry    *pRxReorderEntry =3D ieee->RxReorderEntry=
;
>>    u8                count =3D 0;
>>    IEEE80211_DEBUG(IEEE80211_DL_TS, "=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D>%s()\=
n", __func__);
>>    // Initialize Tx TS related info.
>> @@ -418,7 +418,7 @@ static void RemoveTsEntry(struct ieee80211_device *ie=
ee, struct ts_common_info *
>>=20
>>    if(TxRxSelect =3D=3D RX_DIR) {
>> //#ifdef TO_DO_LIST
>> -        PRX_REORDER_ENTRY    pRxReorderEntry;
>> +        struct rx_reorder_entry    *pRxReorderEntry;
>>        struct rx_ts_record     *pRxTS =3D (struct rx_ts_record *)pTs;
>>        if(timer_pending(&pRxTS->rx_pkt_pending_timer))
>>            del_timer_sync(&pRxTS->rx_pkt_pending_timer);
>> @@ -426,7 +426,7 @@ static void RemoveTsEntry(struct ieee80211_device *ie=
ee, struct ts_common_info *
>>        while(!list_empty(&pRxTS->rx_pending_pkt_list)) {
>>            spin_lock_irqsave(&(ieee->reorder_spinlock), flags);
>>            //pRxReorderEntry =3D list_entry(&pRxTS->rx_pending_pkt_list.p=
rev,RX_REORDER_ENTRY,List);
>> -            pRxReorderEntry =3D (PRX_REORDER_ENTRY)list_entry(pRxTS->rx_=
pending_pkt_list.prev, RX_REORDER_ENTRY, List);
>> +            pRxReorderEntry =3D (struct rx_reorder_entry *)list_entry(pR=
xTS->rx_pending_pkt_list.prev, struct rx_reorder_entry, List);
>>            list_del_init(&pRxReorderEntry->List);
>>            {
>>                int i =3D 0;
>> --
>> 2.17.1
>>=20
>> --
>> You received this message because you are subscribed to the Google Groups=
 "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an=
 email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/outreachy-kernel/20190310174635.16923-6-bhanusreemahesh%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>=20

