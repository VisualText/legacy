// XTPMarkupTreeCtrl.h : header file
//
// THIS SOURCE FILE IS THE PROPERTY OF CODEJOCK SOFTWARE AND IS NOT TO BE
// RE-DISTRIBUTED BY ANY MEANS WHATSOEVER WITHOUT THE EXPRESSED WRITTEN
// CONSENT OF CODEJOCK SOFTWARE.
//
// THIS SOURCE CODE CAN ONLY BE USED UNDER THE TERMS AND CONDITIONS OUTLINED
// IN THE XTREME TOOLKIT PRO LICENSE AGREEMENT. CODEJOCK SOFTWARE GRANTS TO
// YOU (ONE SOFTWARE DEVELOPER) THE LIMITED RIGHT TO USE THIS SOFTWARE ON A
// SINGLE COMPUTER.
//
// CONTACT INFORMATION:
// support@codejock.com
// http://www.codejock.com
//
/////////////////////////////////////////////////////////////////////////////

//{{AFX_CODEJOCK_PRIVATE
#if !defined(__MARKUPTREECTRL_H__) && defined(_XTP_INCLUDE_MARKUP)
#define __MARKUPTREECTRL_H__
//}}AFX_CODEJOCK_PRIVATE

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

// ----------------------------------------------------------------------
// Summary:
// ----------------------------------------------------------------------
class _XTP_EXT_CLASS CXTPMarkupTreeCtrl : public CXTPTreeCtrl, public CXTPMarkupContext
{
public:
	// ----------------------------------------------------------------------
	// Summary:
	// ----------------------------------------------------------------------
	CXTPMarkupTreeCtrl();

	// ----------------------------------------------------------------------
	// Summary:
	// ----------------------------------------------------------------------
	virtual ~CXTPMarkupTreeCtrl();

public:

	CXTPMarkupContext* GetMarkupContext()
	{
		return this;
	}

	// ----------------------------------------------------------------------
	// Summary:
	// ----------------------------------------------------------------------
	HTREEITEM AddItem(LPCTSTR lpszItem, int nImage, int nSelectedImage, HTREEITEM hParent = TVI_ROOT, HTREEITEM hInsertAfter = TVI_LAST);

	//{{AFX_VIRTUAL(CXTPMarkupTreeCtrl)
	virtual void PreSubclassWindow();
	virtual BOOL OnWndMsg(UINT message, WPARAM wParam, LPARAM lParam, LRESULT *pResult);
	//}}AFX_VIRTUAL

protected:
	// ----------------------------------------------------------------------
	// Summary:
	// ----------------------------------------------------------------------
	void DrawMarkupItem(NMTVCUSTOMDRAW* lpLVCD);

	// ----------------------------------------------------------------------
	// Summary:
	// ----------------------------------------------------------------------
	HTREEITEM HitTestMarkupItem(CPoint point);

	//{{AFX_MSG(CXTPMarkupTreeCtrl)
	afx_msg void OnDeleteItem (NMHDR *pNMHDR, LRESULT *pResult);
	afx_msg void OnGetInfoTip (NMHDR *pNMHDR, LRESULT *pResult);
	afx_msg void OnGetDispInfo(NMHDR *pNMHDR, LRESULT *pResult);
	afx_msg void OnCustomDraw (NMHDR *pNMHDR, LRESULT *pResult);
	afx_msg void OnLButtonDown(UINT nFlags, CPoint point);
	afx_msg void OnLButtonDblClk(UINT nFlags, CPoint point);
	afx_msg void OnRButtonDown(UINT nFlags, CPoint point);
	afx_msg int OnCreate(LPCREATESTRUCT lpCreateStruct);
	afx_msg void OnPaint();
	//}}AFX_MSG

	DECLARE_MESSAGE_MAP()

protected:

	CXTPToolTipContext::CMarkupToolTip *m_pToolTip;
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}

#endif // !defined(__MARKUPTREECTRL_H__)
